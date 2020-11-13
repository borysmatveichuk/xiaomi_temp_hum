import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';

import 'blue_constants.dart';

class DeviceDetailsData extends ChangeNotifier {
  final Peripheral device;

  String _deviceState = 'N/A';
  String get deviceState => _deviceState;

  String _batteryLevel = 'N/A';
  String get batteryLevel => _batteryLevel;

  String _sensorData = 'N/A';
  String get sensorData => _sensorData;

  DeviceDetailsData(this.device) {
    print('id: ${device.identifier}');
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await device.disconnectOrCancelConnection();
  }

  Future<void> connectToDevice() async {
    await device.connect(timeout: Duration(seconds: 10));

    _getState();
    _getBatteryLevel();
  }

  void _getState() {
    device
        .observeConnectionState(
            emitCurrentValue: true, completeOnDisconnect: true)
        .listen((connectionState) {
      switch (connectionState) {
        case PeripheralConnectionState.connecting:
          _deviceState = 'Connecting';
          break;
        case PeripheralConnectionState.connected:
          _deviceState = 'Connected';
          break;
        case PeripheralConnectionState.disconnected:
          _deviceState = 'Disconnected';
          break;
        case PeripheralConnectionState.disconnecting:
          _deviceState = 'Disconnecting';
          break;
      }
      notifyListeners();
    });
  }

  Future<void> _getBatteryLevel() async {
    await device.discoverAllServicesAndCharacteristics();
    List<Characteristic> batteryServiceCharacteristics =
        await device.characteristics(BluConstants.BatteryServiceGuid);
    List<Characteristic> sensorServiceCharacteristics =
        await device.characteristics(BluConstants.SensorServiceGuid);


    for (Characteristic characteristic in sensorServiceCharacteristics) {
      // Cannot read the temperature :(
      //if (characteristic.uuid.toUpperCase() == BluConstants.SensorDataGuid) {
        if (characteristic.isReadable) {
          Uint8List bytes = await characteristic.read();
          _sensorData = bytes.toString();
          notifyListeners();
        } else {
          print('${characteristic.uuid} cannot be read');
        }
      //}
    }

    for (Characteristic characteristic in batteryServiceCharacteristics) {
      if (characteristic.uuid.toUpperCase() == BluConstants.BatteryLevelGuid) {
        Uint8List bytes = await characteristic.read();
        _batteryLevel = bytes.toString();
        notifyListeners();
      }
    }


    // Just for debug
    List<Service> services = await device.services();
    for (Service service in services) {
      List<Characteristic> serviceCharacteristics = await service.characteristics();
      for (Characteristic c in serviceCharacteristics) {
        if (c.isReadable) {
          Uint8List bytes = await c.read();
          print('serv: ${service.uuid} char: ${bytes.toString()}');
        }
      }
    }
  }
}
