import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

abstract interface class DABPlusRepository {
  Future<Either<ErrorDescription, List<DABStationModel>>> scan();
  Future<Either<ErrorDescription, void>> tuneTo(String channelUrl);
  Future<Either<ErrorDescription, void>> stopRadio();

  Future<Either<ErrorDescription, void>> closeRadio();
}
