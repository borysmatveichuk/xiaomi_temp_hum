import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:xiaomi_temp_hum/data/blue_constants.dart';

class DevicesScanData extends ChangeNotifier {
  LinkedHashMap<String, Peripheral> _devices = LinkedHashMap();

  UnmodifiableListView<Peripheral> get devices =>
      UnmodifiableListView(_devices.values);

  BleManager _blue = BleManager();

  DevicesScanData() {
    _init();
  }

  void _init() async {
    await _blue.createClient();
    print('client: ${_blue.toString()}');
  }

  void scanDevices() async {
    _devices.clear();
    print("Start scan");
    _blue.startPeripheralScan().listen((result) {
      if (!result.peripheral.identifier.startsWith(BluConstants.VendorID)) {
        return;
      }
      if (!_devices.containsKey(result.peripheral.identifier)) {
        _devices[result.peripheral.identifier] = result.peripheral;
        notifyListeners();
      }
    }, onError: (Object error) {
      print(error.toString());
    }, onDone: () {
      print("DONE scanning!");
    });
  }
}
