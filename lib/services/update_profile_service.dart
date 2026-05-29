import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class UpdateProfileService {
  static Future<Response> pushProfile(
    String name,
    String email,
    String number,
    String address,
    String token,
  ) async {
    var response = await DioConnector.dio.post(
      "update-profile",
      data: {"name": name, "email": email, "phone": number, "address": address},
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
