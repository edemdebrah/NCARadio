import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dab_online_radio/core/services/interfaces/dab_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';

class DABRepositoryImpl implements DABPlusRepository {
  final AudioPlayer player;

  DABRepositoryImpl({required this.player});

  @override
  Future<Either<ErrorDescription, List<DABStationModel>>> scan() {
    // TODO: implement scan
    //STEPs
    // check the ip number of ip
    //get the station name and location
    // create a list of dab station and return
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorDescription, void>> stopRadio() async {
    try {
      await player.stop();
      return const Right(null);
    } catch (e) {
      return Left(ErrorDescription("unable to stop station"));
    }
  }

  @override
  Future<Either<ErrorDescription, void>> tuneTo(String channelUrl) async {
    try {
      await player.setUrl(channelUrl, preload: false);
      await player.play();
      return const Right(null);
    } catch (e) {
      return Left(ErrorDescription("unable to play station:${e.toString()}"));
    }
  }

  @override
  Future<Either<ErrorDescription, void>> closeRadio() async {
    try {
      await player.dispose();
      return const Right(null);
    } catch (e) {
      return Left(ErrorDescription("Clossing stopped"));
    }
  }
}
