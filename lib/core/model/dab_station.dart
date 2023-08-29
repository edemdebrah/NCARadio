import 'package:freezed_annotation/freezed_annotation.dart';

part 'dab_station.freezed.dart';
part "dab_station.g.dart";

@freezed
class DABStationModel with _$DABStationModel {
  const factory DABStationModel({
    required String stationName,
    required String location,
    required String freqChannel,
    required String channelUrl,
  }) = _DABStationModel;

  factory DABStationModel.fromJson(Map<String, dynamic> json) =>
      _$DABStationModelFromJson(json);
}
