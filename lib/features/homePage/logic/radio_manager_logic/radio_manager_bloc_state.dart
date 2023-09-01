part of 'radio_manager_bloc.dart';

@freezed
class RadioManagerState with _$RadioManagerState {
  const factory RadioManagerState.initial() = _Initial;
  const factory RadioManagerState.loadingRadios() = _LoadingRadios;
  const factory RadioManagerState.loadedRadios({required List<DABStationModel> stations}) = _LoadedRadios;
  const factory RadioManagerState.radioError(String err) = _RadioError;
}
