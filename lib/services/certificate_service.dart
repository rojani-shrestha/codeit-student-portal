import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class CertificateService {
  static Future<Response> fetchCertificate() async {
    var response = await DioConnector.dio.get("certificates",
    options: Options(
      headers: {
        "Authorization": "Bearer 6245|bp1KxXes1VKVAuFK9vrIrCKtdb4TPzdOK2FjzTPN916369dc"
      }
    )
    );
    return response;
  }
}
