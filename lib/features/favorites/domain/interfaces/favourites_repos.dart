import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dab_online_radio/features/favorites/domain/entities/station.dart';

abstract interface class FavoritesRepository {
  Future<void> favorite(DABStation station);

  Future<void> removeFromFavorites(DABStation station);
}
