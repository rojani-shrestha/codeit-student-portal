import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class SupportService {
  static Future<Response> fetchSupport() async {
    var response = await DioConnector.dio.get(
      "show-ticket",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6304|Yqqx2M29IMADGjg31RPXDlnAwYZHf9pFLLYcUd3862fb60da",
        },
      ),
    );
    return response;
  }
}
