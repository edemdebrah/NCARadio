import 'package:dab_online_radio/features/favorites/domain/entities/station.dart';
import 'package:dab_online_radio/features/favorites/domain/interfaces/favourites_repos.dart';
import 'package:dab_online_radio/features/favorites/domain/interfaces/local_data_source_interface.dart';

final class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesLocalDataSource localdb;

  FavoritesRepositoryImpl({required this.localdb});

  @override
  Future<void> favorite(DABStation station) async {
    station.isFavorite = true;
    await localdb.addStation(station);
  }

  @override
  Future<void> removeFromFavorites(DABStation station) async {
    station.isFavorite = false;
    await localdb.addStation(station);
  }
}
