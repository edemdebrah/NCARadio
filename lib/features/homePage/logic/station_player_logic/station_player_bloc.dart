import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dab_online_radio/core/services/interfaces/dab_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_player_event.dart';
part 'station_player_state.dart';
part 'station_player_bloc.freezed.dart';

class StationPlayerBloc extends Bloc<StationPlayerEvent, StationPlayerState> {
  final DABPlusRepository repo;
  bool isPlaying = false;

  StationPlayerBloc(this.repo) : super(const _Initial()) {
    on<_TuneTo>((event, emit) async {
      final res = await repo.tuneTo(event.channelUrl);
      res.fold(
        (err) => emit(StationPlayerState.playerError(err.toString())),
        (success) => emit(const StationPlayerState.playing()),
      );
    }, transformer: sequential());
    on<_PlayRadio>((event, emit) async {
      final res = await repo.playRadio();
      res.fold(
        (err) => emit(StationPlayerState.playerError(err.toString())),
        (success) => emit(const StationPlayerState.playing()),
      );
    }, transformer: droppable());
    on<_StopRadio>((event, emit) {
      repo.stopRadio();
    }, transformer: droppable());
  }
}
