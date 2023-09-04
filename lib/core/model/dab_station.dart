import 'package:dab_online_radio/features/homePage/domain/entities/station.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dab_station.freezed.dart';
part "dab_station.g.dart";

@freezed
class DABStationModel with _$DABStationModel {
  const DABStationModel._();
  const factory DABStationModel({
    required int no,
    required String stationName,
    required String location,
    required String image,
    required String channelUrl,
    required String freqChannel,
  }) = _DABStationModel;

  factory DABStationModel.fromJson(Map<String, dynamic> json) => _$DABStationModelFromJson(json);
  DABStation toEntity() => DABStation(
      no: no, stationName: stationName, location: location, freqChannel: freqChannel, channelUrl: channelUrl);
  static List<DABStationModel> stationsList = const [
    DABStationModel(
      freqChannel: "",
      no: 1,
      channelUrl: "https://radio.com.gh/gbc-uniiq-fm/",
      stationName: 'Uniiq FM',
      location: 'GBC, Accra',
      image: 'assets/images/uniiq_fm.jpeg',
    ),
    DABStationModel(
      freqChannel: "",
      no: 2,
      channelUrl: "https://radioghana.net/angel-fm",
      stationName: 'Angel FM',
      location: 'Bantama, Kumasi',
      image: 'assets/images/angel_fm.webp',
    ),
    DABStationModel(
      freqChannel: "",
      no: 3,
      channelUrl: "",
      stationName: 'Asaase FM',
      location: 'Cantonments, Accra',
      image: 'assets/images/asaaseRadio2.jpeg',
    ),
    DABStationModel(
      freqChannel: "",
      no: 4,
      channelUrl: "",
      stationName: 'Asempa FM',
      location: 'Kokomlemle, Accra',
      image: 'assets/images/asempa_fm.jpeg',
    ),
    DABStationModel(
      freqChannel: "",
      no: 5,
      channelUrl: "",
      stationName: 'Atlantis Radio',
      location: 'Asylum Down, Accra',
      image: 'assets/images/atlantis_fm.jpeg',
    ),
    DABStationModel(
      freqChannel: "",
      no: 6,
      channelUrl: "https://citi973fm.radioca.st/index.html:80/;stream.mp3",
      stationName: 'Citi FM',
      location: 'Adabraka, Accra',
      image: 'assets/images/citi_fm1.png',
    ),
    DABStationModel(
      freqChannel: "",
      no: 7,
      channelUrl: "",
      stationName: 'Class FM',
      location: 'Cantonments, Accra',
      image: 'assets/images/class_fm2.webp',
    ),
    DABStationModel(
      freqChannel: "",
      no: 8,
      channelUrl: "",
      stationName: 'Hot FM',
      location: 'Ussher Town, Accra',
      image: 'assets/images/hot_fm1.png',
    ),
    DABStationModel(
      freqChannel: "",
      no: 9,
      channelUrl: "http://kessbenfmaccra-atunwadigital.streamguys1.com/kessbenfmaccra",
      stationName: 'Kessben FM',
      location: 'Adum, Kumasi',
      image: 'assets/images/kessben_fm.png',
    ),
    DABStationModel(
      freqChannel: "",
      no: 10,
      channelUrl: "https://peacefm-atunwadigital.streamguys1.com/peacefm",
      stationName: 'Peace FM',
      location: 'Abeka Lapaz, Accra',
      image: 'assets/images/peace_fm1.png',
    ),
    DABStationModel(
      freqChannel: "",
      no: 11,
      channelUrl: "http://omanfm.atunwadigital.streamguys1.com/omanfm",
      stationName: 'Oman FM',
      location: 'Madina, Accra',
      image: 'assets/images/oman_fm1.webp',
    ),
    DABStationModel(
      no: 12,
      freqChannel: "",
      channelUrl: "",
      stationName: 'Opemsuo FM',
      location: 'Manhyia, Kumasi',
      image: 'assets/images/opemsuo_fm2.jpeg',
    ),
    DABStationModel(
      no: 13,
      freqChannel: "",
      channelUrl: "http://joynewstv.atunwadigital.streamguys1.com/joynewstv",
      stationName: 'Orange FM',
      location: 'Mall, Kumasi',
      image: 'assets/images/orange_fm1.webp',
    ),
    DABStationModel(
      no: 14,
      freqChannel: "",
      channelUrl: "",
      stationName: 'Radio Focus',
      location: 'KNUST, Kumasi',
      image: 'assets/images/radio_focus1.png',
    ),
    DABStationModel(
      no: 15,
      freqChannel: "",
      channelUrl: "",
      stationName: 'Radio Univers',
      location: 'UG-Legon, Accra',
      image: 'assets/images/radio_univers.jpeg',
    ),
    DABStationModel(
      no: 16,
      freqChannel: "",
      channelUrl: "",
      stationName: 'Sompa FM',
      location: 'Suame, Kumasi',
      image: 'assets/images/sompa_fm1.webp',
    ),
    DABStationModel(
      no: 17,
      freqChannel: "",
      channelUrl: "",
      stationName: 'Starr FM',
      location: 'Nima, Accra',
      image: 'assets/images/star_fm1.webp',
    ),
    DABStationModel(
      no: 18,
      freqChannel: "",
      channelUrl: "http://wontumifm-atunwadigital.streamguys1.com/wontumifm",
      stationName: 'Wontumi',
      location: 'Amakom, Kumasi',
      image: 'assets/images/wontumi_fm1.jpeg',
    ),
  ];
}
