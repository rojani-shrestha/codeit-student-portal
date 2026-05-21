import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class GooglelinkService {
  static Future<Response> fetchLink() async {
    var response = await DioConnector.dio.get(
      "google-meet",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10155|PFZFtPA07GEhDAMWmGIWQNpO4ClCbGsw3kyTj1249674fe6d",
        },
      ),
    );
    return response;
  }
}
