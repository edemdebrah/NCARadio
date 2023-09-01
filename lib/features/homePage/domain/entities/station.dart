import 'package:isar/isar.dart';
part 'station.g.dart';

@collection
final class DABStation {
  final Id no;
  final String stationName;
  final String location;
  final String freqChannel;
  final String channelUrl;
  bool isFavorite;

  DABStation({
    required this.no,
    required this.stationName,
    required this.location,
    required this.freqChannel,
    required this.channelUrl,
    this.isFavorite = false,
  });
}
