import 'package:dab_online_radio/core/services/interfaces/dab_interface.dart';
import 'package:dab_online_radio/core/services/repositories/dab_repository.dart';
import 'package:dab_online_radio/features/homePage/data/data_sources/loca_data_source.dart';
import 'package:dab_online_radio/features/homePage/data/repositories/favorites_repository.dart';
import 'package:dab_online_radio/features/homePage/domain/entities/station.dart';
import 'package:dab_online_radio/features/homePage/domain/interfaces/favourites_repos.dart';
import 'package:dab_online_radio/features/homePage/domain/interfaces/local_data_source_interface.dart';
import 'package:dab_online_radio/features/homePage/logic/radio_manager_logic/radio_manager_bloc.dart';
import 'package:dab_online_radio/features/homePage/logic/station_player_logic/station_player_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

final dep = GetIt.instance;

Future<void> initailizeAllDependencies() async {
  final docDir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [DABStationSchema],
    directory: docDir.path,
  );
  final AudioPlayer audioPlayer = AudioPlayer();

  dep.registerFactory<AudioPlayer>(() => audioPlayer);
  dep.registerFactory<FavoritesLocalDataSource>(() => FavoritesLocalDataSourceImpl(db: isar.dABStations));
  dep.registerFactory<FavoritesRepository>(() => FavoritesRepositoryImpl(localdb: dep()));
  dep.registerFactory<DABPlusRepository>(() => DABRepositoryImpl(dep()));
  dep.registerFactory<StationPlayerBloc>(() => StationPlayerBloc(dep()));
  dep.registerFactory<RadioManagerBloc>(() => RadioManagerBloc(favRepo: dep(), dabRepo: dep()));
}
