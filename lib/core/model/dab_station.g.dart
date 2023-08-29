// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dab_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DABStationModel _$$_DABStationModelFromJson(Map<String, dynamic> json) =>
    _$_DABStationModel(
      stationName: json['stationName'] as String,
      location: json['location'] as String,
      freqChannel: json['freqChannel'] as String,
      channelUrl: json['channelUrl'] as String,
    );

Map<String, dynamic> _$$_DABStationModelToJson(_$_DABStationModel instance) =>
    <String, dynamic>{
      'stationName': instance.stationName,
      'location': instance.location,
      'freqChannel': instance.freqChannel,
      'channelUrl': instance.channelUrl,
    };
