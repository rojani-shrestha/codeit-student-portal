import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ProfileService {
  static Future<Response> getProfile() async {
    var response = await DioConnector.dio.get(
      "profile",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10784|4Ge0oIY6A0wFjaVv52aWu5d4CFfl1n2Gi4uXPFnW62872ee7",
        },
      ),
    );
    return response;
  }
}
