part of 'station_player_bloc.dart';

@freezed
class StationPlayerEvent with _$StationPlayerEvent {
  const factory StationPlayerEvent.tuneTo(String channelUrl) = _TuneTo;
  const factory StationPlayerEvent.started() = _Started;
  const factory StationPlayerEvent.playRadio({String? channelUrl}) = _PlayRadio;
  const factory StationPlayerEvent.stopRadio() = _StopRadio;
}
