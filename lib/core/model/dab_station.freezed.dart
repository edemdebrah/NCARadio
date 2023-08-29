// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dab_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DABStationModel _$DABStationModelFromJson(Map<String, dynamic> json) {
  return _DABStationModel.fromJson(json);
}

/// @nodoc
mixin _$DABStationModel {
  String get stationName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get freqChannel => throw _privateConstructorUsedError;
  String get channelUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DABStationModelCopyWith<DABStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DABStationModelCopyWith<$Res> {
  factory $DABStationModelCopyWith(
          DABStationModel value, $Res Function(DABStationModel) then) =
      _$DABStationModelCopyWithImpl<$Res, DABStationModel>;
  @useResult
  $Res call(
      {String stationName,
      String location,
      String freqChannel,
      String channelUrl});
}

/// @nodoc
class _$DABStationModelCopyWithImpl<$Res, $Val extends DABStationModel>
    implements $DABStationModelCopyWith<$Res> {
  _$DABStationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? location = null,
    Object? freqChannel = null,
    Object? channelUrl = null,
  }) {
    return _then(_value.copyWith(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      freqChannel: null == freqChannel
          ? _value.freqChannel
          : freqChannel // ignore: cast_nullable_to_non_nullable
              as String,
      channelUrl: null == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DABStationModelCopyWith<$Res>
    implements $DABStationModelCopyWith<$Res> {
  factory _$$_DABStationModelCopyWith(
          _$_DABStationModel value, $Res Function(_$_DABStationModel) then) =
      __$$_DABStationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stationName,
      String location,
      String freqChannel,
      String channelUrl});
}

/// @nodoc
class __$$_DABStationModelCopyWithImpl<$Res>
    extends _$DABStationModelCopyWithImpl<$Res, _$_DABStationModel>
    implements _$$_DABStationModelCopyWith<$Res> {
  __$$_DABStationModelCopyWithImpl(
      _$_DABStationModel _value, $Res Function(_$_DABStationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? location = null,
    Object? freqChannel = null,
    Object? channelUrl = null,
  }) {
    return _then(_$_DABStationModel(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      freqChannel: null == freqChannel
          ? _value.freqChannel
          : freqChannel // ignore: cast_nullable_to_non_nullable
              as String,
      channelUrl: null == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DABStationModel implements _DABStationModel {
  const _$_DABStationModel(
      {required this.stationName,
      required this.location,
      required this.freqChannel,
      required this.channelUrl});

  factory _$_DABStationModel.fromJson(Map<String, dynamic> json) =>
      _$$_DABStationModelFromJson(json);

  @override
  final String stationName;
  @override
  final String location;
  @override
  final String freqChannel;
  @override
  final String channelUrl;

  @override
  String toString() {
    return 'DABStationModel(stationName: $stationName, location: $location, freqChannel: $freqChannel, channelUrl: $channelUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DABStationModel &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.freqChannel, freqChannel) ||
                other.freqChannel == freqChannel) &&
            (identical(other.channelUrl, channelUrl) ||
                other.channelUrl == channelUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stationName, location, freqChannel, channelUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DABStationModelCopyWith<_$_DABStationModel> get copyWith =>
      __$$_DABStationModelCopyWithImpl<_$_DABStationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DABStationModelToJson(
      this,
    );
  }
}

abstract class _DABStationModel implements DABStationModel {
  const factory _DABStationModel(
      {required final String stationName,
      required final String location,
      required final String freqChannel,
      required final String channelUrl}) = _$_DABStationModel;

  factory _DABStationModel.fromJson(Map<String, dynamic> json) =
      _$_DABStationModel.fromJson;

  @override
  String get stationName;
  @override
  String get location;
  @override
  String get freqChannel;
  @override
  String get channelUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DABStationModelCopyWith<_$_DABStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
