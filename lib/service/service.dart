import 'package:dartz/dartz.dart';
import 'package:demo_application/models/form_data_model.dart';
import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/service/local_service.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class IRestClientService {
  Future<Either<ClientFailure, LeadDataModel>> getLeadData();
  Future<Either<ClientFailure, List<FormDataModel>>> getFormData();
}

@LazySingleton(as: IRestClientService)
class RestClientService implements IRestClientService {

  @override
  Future<Either<ClientFailure, LeadDataModel>> getLeadData() async {
    final client = LocalService.getClient(queryParameters: {
    "rty":"getchildren",
    "pgid":"_pb_employee",
    "id":"1000000014_1uwi5o"
    });
    try {
      LeadDataModel data = await client.getLeadData();
      return Right(data);
    } on DioError catch (_) {
      return const Left(ClientFailure.error);
    }
  }

  @override
  Future<Either<ClientFailure, List<FormDataModel>>> getFormData() async {
    final client = LocalService.getClient(queryParameters: {
      "rty":"getform",
    });
    try {
      List<FormDataModel> data = await client.getFormData();
      return Right(data);
    } on DioError catch (_) {
      return const Left(ClientFailure.error);
    }
  }

}
