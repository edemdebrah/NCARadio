part of 'station_player_bloc.dart';

@freezed
class StationPlayerState with _$StationPlayerState {
  const factory StationPlayerState.initial() = _Initial;
  const factory StationPlayerState.playing() = _Playing;
  const factory StationPlayerState.stoppedPlaying() = _StoppedPlaying;
  const factory StationPlayerState.playerError(String err) = _PlayerError;
}
