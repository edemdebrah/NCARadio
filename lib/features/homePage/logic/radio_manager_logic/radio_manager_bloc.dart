import 'package:bloc/bloc.dart';
import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dab_online_radio/core/services/interfaces/dab_interface.dart';
import 'package:dab_online_radio/features/homePage/domain/interfaces/favourites_repos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_manager_bloc_event.dart';
part 'radio_manager_bloc_state.dart';
part 'radio_manager_bloc.freezed.dart';

class RadioManagerBloc extends Bloc<RadioManagerBlocEvent, RadioManagerState> {
  final FavoritesRepository favRepo;
  final DABPlusRepository dabRepo;
  RadioManagerBloc({required this.favRepo, required this.dabRepo}) : super(const _Initial()) {
    on<_Scan>((event, emit) async {
      emit(const RadioManagerState.loadingRadios());
      // final res = await repo.scan();
      // res.fold((err) => emit(RadioManagerState.radioError(err.toString())),
      //     (radios) => emit(RadioManagerState.loadedRadios(stations: radios)));
      emit(RadioManagerState.loadedRadios(stations: DABStationModel.stationsList));
    });
    on<_AddToFavorites>((event, emit) async {
      try {
        await favRepo.favorite(event.station.toEntity());
        emit(const RadioManagerState.loadingRadios());
      } catch (err) {
        emit(RadioManagerState.radioError("Could not add ${event.station.stationName} to favorites ${err.toString()}"));
      }
    });
    on<_RemoveFromFavorites>((event, emit) async {
      await favRepo.removeFromFavorites(event.station.toEntity());
      emit(const RadioManagerState.loadingRadios());
    });
  }
}
