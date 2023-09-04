import 'package:dab_online_radio/features/homePage/domain/entities/station.dart';

abstract interface class FavoritesRepository {
  Future<void> favorite(DABStation station);

  Future<void> removeFromFavorites(DABStation station);
}
