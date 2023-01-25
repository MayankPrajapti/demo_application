import 'package:demo_application/models/lead_data_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'do_whooktest_remote_repository.g.dart';

@RestApi(baseUrl: "https://plumbee.in/dev/cont4/do_whooktest.php?rty=getchildren&pgid=_pb_crm_leads&id=1000008657_k27yrf")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("")
  Future<LeadDataModel> getLeadData();
}
