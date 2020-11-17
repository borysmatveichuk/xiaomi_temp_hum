import 'dart:async';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:xiaomi_temp_hum/data/blue_constants.dart';
import 'package:xiaomi_temp_hum/data/devices_scan_states.dart';

class DevicesScanData extends ChangeNotifier {
  LinkedHashMap<String, Peripheral> _devices = LinkedHashMap();
  DevicesScanStates state = DevicesScanStates(UnmodifiableListView([]));

  BleManager _ble = BleManager();

  BleManager get bleManager => _ble;

  StreamSubscription _deviceScanSubs;

  DevicesScanData() {
    _init();
  }

  void _init() async {
    await _ble.createClient();
    print('client: ${_ble.toString()}');
  }

  void disposeResources() async {
    await _deviceScanSubs?.cancel();
    await _ble?.stopPeripheralScan();
    await _ble?.destroyClient();
  }

  void scanDevices() async {
    state = DevicesScanStates.scanning();
    notifyListeners();
    _devices.clear();
    print("Start scan");

    _deviceScanSubs = _ble.startPeripheralScan().listen((result) {
      print('scan result: ${result.peripheral.identifier}');
      if (!result.peripheral.identifier.startsWith(BluConstants.VendorID)) {
        return;
      }
      if (!_devices.containsKey(result.peripheral.identifier)) {
        _devices[result.peripheral.identifier] = result.peripheral;
        state = DevicesScanStates(UnmodifiableListView(_devices.values));
        notifyListeners();
      }
    }, onError: (Object error) {
      print('Error: ${error.toString()}');
      state = DevicesScanStates.error(error.toString());
      notifyListeners();
    }, onDone: () {
      print("DONE scanning!");
    });

    Timer(Duration(seconds: 10), () {
      _deviceScanSubs.cancel();
      state = DevicesScanStates(UnmodifiableListView(_devices.values));
      notifyListeners();
    });
  }
}
