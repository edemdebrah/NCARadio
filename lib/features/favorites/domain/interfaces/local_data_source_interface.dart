import 'package:dab_online_radio/features/favorites/domain/entities/station.dart';

abstract interface class FavoritesLocalDataSource {
  Future<void> addStation(DABStation station);
  Future<void> removeStation(int id);
  Future<void> clearAllStation();
}
