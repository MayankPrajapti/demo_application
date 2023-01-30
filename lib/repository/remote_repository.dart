import 'package:demo_application/models/form_data_model.dart';
import 'package:demo_application/models/lead_data_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'remote_repository.g.dart';
@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("")
  Future<LeadDataModel> getLeadData();

  @GET("")
  Future<List<FormDataModel>> getFormData();
}
