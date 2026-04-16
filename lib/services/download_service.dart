import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class DownloadService {
  static Future<Response> downloading(int certificateId) async {
    var response = await DioConnector.dio.get(
      "sendcertificate/$certificateId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6410|oe3pRNkKEi9FEym0ORSJinFLhcVGLnDisLIHpFwoa4730c0c",
        },
      ),
    );
    return response;
  }
}
