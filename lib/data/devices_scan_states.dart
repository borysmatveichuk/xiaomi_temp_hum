import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'devices_scan_states.freezed.dart';

// for code generation run:
// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
abstract class DevicesScanStates with _$DevicesScanStates {
  const factory DevicesScanStates(UnmodifiableListView<Peripheral> value) = Data;
  const factory DevicesScanStates.scanning() = Scanning;
  const factory DevicesScanStates.error([String message]) = ErrorDetails;
}
