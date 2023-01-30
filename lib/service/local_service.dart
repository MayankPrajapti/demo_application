import 'dart:convert';

import 'package:demo_application/repository/remote_repository.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/http.dart';

class LocalService {
  static final Logger _logger = Logger();

  static RestClient getClient({Map<String, dynamic>? queryParameters}) {
    return RestClient(Dio(BaseOptions(
        headers: {"Content-Type": "application/json"},
        queryParameters: queryParameters,
        baseUrl: "https://plumbee.in/dev/cont4/do_whooktest.php"))
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
  }
}
