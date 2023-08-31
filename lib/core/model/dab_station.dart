import 'package:freezed_annotation/freezed_annotation.dart';

part 'dab_station.freezed.dart';
part "dab_station.g.dart";

@freezed
class DABStationModel with _$DABStationModel {
  const DABStationModel._();
  const factory DABStationModel({
    required String stationName,
    required String location,
    required String image,
    required String channelUrl,
  }) = _DABStationModel;

  factory DABStationModel.fromJson(Map<String, dynamic> json) => _$DABStationModelFromJson(json);

  static List<DABStationModel> stationsList = const [
    DABStationModel(
      channelUrl: "https://radio.com.gh/gbc-uniiq-fm/",
      stationName: 'Uniiq FM',
      location: 'GBC, Accra',
      image: 'assets/images/uniiq_fm.jpeg',
    ),
    DABStationModel(
      channelUrl: "https://radioghana.net/angel-fm",
      stationName: 'Angel FM',
      location: 'Bantama, Kumasi',
      image: 'assets/images/angel_fm.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Asaase FM',
      location: 'Cantonments, Accra',
      image: 'assets/images/asaaseRadio2.jpeg',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Asempa FM',
      location: 'Kokomlemle, Accra',
      image: 'assets/images/asempa_fm.jpeg',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Atlantis Radio',
      location: 'Asylum Down, Accra',
      image: 'assets/images/atlantis_fm.jpeg',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Citi FM',
      location: 'Adabraka, Accra',
      image: 'assets/images/citi_fm1.png',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Class FM',
      location: 'Cantonments, Accra',
      image: 'assets/images/class_fm2.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Hot FM',
      location: 'Ussher Town, Accra',
      image: 'assets/images/hot_fm1.png',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Kessben FM',
      location: 'Adum, Kumasi',
      image: 'assets/images/kessben_fm.png',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Peace FM',
      location: 'Abeka Lapaz, Accra',
      image: 'assets/images/peace_fm1.png',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Oman FM',
      location: 'Madina, Accra',
      image: 'assets/images/oman_fm1.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Opemsuo FM',
      location: 'Manhyia, Kumasi',
      image: 'assets/images/opemsuo_fm2.jpeg',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Orange FM',
      location: 'Mall, Kumasi',
      image: 'assets/images/orange_fm1.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Radio Focus',
      location: 'KNUST, Kumasi',
      image: 'assets/images/radio_focus1.png',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Radio Univers',
      location: 'UG-Legon, Accra',
      image: 'assets/images/radio_univers.jpeg',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Sompa FM',
      location: 'Suame, Kumasi',
      image: 'assets/images/sompa_fm1.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Starr FM',
      location: 'Nima, Accra',
      image: 'assets/images/star_fm1.webp',
    ),
    DABStationModel(
      channelUrl: "",
      stationName: 'Wontumi',
      location: 'Amakom, Kumasi',
      image: 'assets/images/wontumi_fm1.jpeg',
    ),
  ];
}
