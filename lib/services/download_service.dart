import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class DownloadService {
  static Future<Response> downloading(int certificateId) async {
    var response = await DioConnector.dio.get(
      "sendcertificate/$certificateId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6245|bp1KxXes1VKVAuFK9vrIrCKtdb4TPzdOK2FjzTPN916369dc",
        },
      ),
    );
    return response;
  }
}
