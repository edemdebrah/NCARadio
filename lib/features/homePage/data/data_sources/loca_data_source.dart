import 'package:dab_online_radio/features/homePage/domain/entities/station.dart';
import 'package:dab_online_radio/features/homePage/domain/interfaces/local_data_source_interface.dart';
import 'package:isar/isar.dart';

final class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  final IsarCollection<DABStation> db;

  FavoritesLocalDataSourceImpl({required this.db});
  @override
  Future<void> addStation(DABStation station) async {
    await db.isar.writeTxn(() async => await db.put(station));
  }

  @override
  Future<void> removeStation(int id) async {
    await db.isar.writeTxn(() async {
      await db.isar.dABStations.delete(id);
    });
  }

  @override
  Future<void> clearAllStation() async {
    await db.isar.writeTxn(() => db.isar.dABStations.clear());
  }
}
