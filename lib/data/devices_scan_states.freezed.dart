// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'devices_scan_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DevicesScanStatesTearOff {
  const _$DevicesScanStatesTearOff();

// ignore: unused_element
  Data call(UnmodifiableListView<Peripheral> value) {
    return Data(
      value,
    );
  }

// ignore: unused_element
  Scanning scanning() {
    return const Scanning();
  }

// ignore: unused_element
  ErrorDetails error([String message]) {
    return ErrorDetails(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DevicesScanStates = _$DevicesScanStatesTearOff();

/// @nodoc
mixin _$DevicesScanStates {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    @required Result scanning(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    Result scanning(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Data value), {
    @required Result scanning(Scanning value),
    @required Result error(ErrorDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Data value), {
    Result scanning(Scanning value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DevicesScanStatesCopyWith<$Res> {
  factory $DevicesScanStatesCopyWith(
          DevicesScanStates value, $Res Function(DevicesScanStates) then) =
      _$DevicesScanStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$DevicesScanStatesCopyWithImpl<$Res>
    implements $DevicesScanStatesCopyWith<$Res> {
  _$DevicesScanStatesCopyWithImpl(this._value, this._then);

  final DevicesScanStates _value;
  // ignore: unused_field
  final $Res Function(DevicesScanStates) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<Peripheral> value});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$DevicesScanStatesCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(Data(
      value == freezed
          ? _value.value
          : value as UnmodifiableListView<Peripheral>,
    ));
  }
}

/// @nodoc
class _$Data with DiagnosticableTreeMixin implements Data {
  const _$Data(this.value) : assert(value != null);

  @override
  final UnmodifiableListView<Peripheral> value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DevicesScanStates(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DevicesScanStates'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    @required Result scanning(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return $default(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    Result scanning(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Data value), {
    @required Result scanning(Scanning value),
    @required Result error(ErrorDetails value),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Data value), {
    Result scanning(Scanning value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements DevicesScanStates {
  const factory Data(UnmodifiableListView<Peripheral> value) = _$Data;

  UnmodifiableListView<Peripheral> get value;
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
abstract class $ScanningCopyWith<$Res> {
  factory $ScanningCopyWith(Scanning value, $Res Function(Scanning) then) =
      _$ScanningCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanningCopyWithImpl<$Res> extends _$DevicesScanStatesCopyWithImpl<$Res>
    implements $ScanningCopyWith<$Res> {
  _$ScanningCopyWithImpl(Scanning _value, $Res Function(Scanning) _then)
      : super(_value, (v) => _then(v as Scanning));

  @override
  Scanning get _value => super._value as Scanning;
}

/// @nodoc
class _$Scanning with DiagnosticableTreeMixin implements Scanning {
  const _$Scanning();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DevicesScanStates.scanning()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DevicesScanStates.scanning'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Scanning);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    @required Result scanning(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return scanning();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    Result scanning(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (scanning != null) {
      return scanning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Data value), {
    @required Result scanning(Scanning value),
    @required Result error(ErrorDetails value),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return scanning(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Data value), {
    Result scanning(Scanning value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (scanning != null) {
      return scanning(this);
    }
    return orElse();
  }
}

abstract class Scanning implements DevicesScanStates {
  const factory Scanning() = _$Scanning;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res>
    extends _$DevicesScanStatesCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails _value, $Res Function(ErrorDetails) _then)
      : super(_value, (v) => _then(v as ErrorDetails));

  @override
  ErrorDetails get _value => super._value as ErrorDetails;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ErrorDetails(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ErrorDetails with DiagnosticableTreeMixin implements ErrorDetails {
  const _$ErrorDetails([this.message]);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DevicesScanStates.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DevicesScanStates.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetails &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      _$ErrorDetailsCopyWithImpl<ErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    @required Result scanning(),
    @required Result error(String message),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(UnmodifiableListView<Peripheral> value), {
    Result scanning(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Data value), {
    @required Result scanning(Scanning value),
    @required Result error(ErrorDetails value),
  }) {
    assert($default != null);
    assert(scanning != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Data value), {
    Result scanning(Scanning value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements DevicesScanStates {
  const factory ErrorDetails([String message]) = _$ErrorDetails;

  String get message;
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith;
}
