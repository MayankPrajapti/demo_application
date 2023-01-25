import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/repository/do_whooktest_remote_repository.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/http.dart';

abstract class IRestClientService {
  Future<Either<ClientFailure, LeadDataModel>> getLeadData();
}

@LazySingleton(as: IRestClientService)
class RestClientService implements IRestClientService {
  final Logger _logger = Logger();

  @override
  Future<Either<ClientFailure, LeadDataModel>> getLeadData() async {
    final client = RestClient(Dio(BaseOptions(headers:{"Content-Type":"application/json"}))
      ..interceptors.addAll([
        InterceptorsWrapper(
          onRequest: (request, _) {
            _logger.i(
                "[${request.method}] ${request.baseUrl + request.path}${request.data != null ? "\nbody : ${request.data}" : ""}${request.queryParameters.isNotEmpty ? "\nparams : ${request.queryParameters}" : ""}",
                null,
                StackTrace.empty);
           return _.next(request);
          },
          onResponse: (response, _) {
            if (response.requestOptions.method == HttpMethod.GET) {
              response.data = jsonDecode(response.data as String);
            }
           return _.next(response);
          },
        )
      ]));
    try {
      LeadDataModel data = await client.getLeadData();
      return Right(data);
    } on DioError catch (_) {
      return const Left(ClientFailure.error);
    }
  }
}
