part of 'radio_manager_bloc.dart';

@freezed
class RadioManagerBlocEvent with _$RadioManagerBlocEvent {
  const factory RadioManagerBlocEvent.scan() = _Scan;
  const factory RadioManagerBlocEvent.loadStations() = _LoadStations;
  const factory RadioManagerBlocEvent.addToFavorites(DABStationModel station) = _AddToFavorites;
  const factory RadioManagerBlocEvent.removeFromFavorites() = _RemoveFromFavorites;
  // const factory RadioManagerBlocEvent.scan() = _Scan;
  // const factory RadioManagerBlocEvent.scan() = _Scan;
}
