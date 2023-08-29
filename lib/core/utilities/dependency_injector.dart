import 'package:dab_online_radio/features/favorites/domain/entities/station.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final dep = GetIt.instance;

Future<void> initailizeAllDependencies() async {
  final docDir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [DABStationSchema],
    directory: docDir.path,
  );
}
