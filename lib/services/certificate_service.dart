import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class CertificateService {
  static Future<Response> fetchCertificate() async {
    var response = await DioConnector.dio.get("certificates",
    options: Options(
      headers: {
        "Authorization": "Bearer 6410|oe3pRNkKEi9FEym0ORSJinFLhcVGLnDisLIHpFwoa4730c0c"
      }
    )
    );
    return response;
  }
}
