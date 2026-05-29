import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ResetService {
  static Future<Response> pushReset(
    String email,
    String otp,
    String password,
  ) async {
    var response = await DioConnector.dio.post(
      "reset-password",
      data: {"email": email, "otp": otp, "password": password},
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10390|kmyEgwNuczBkNtK2smrqIQ8dFfK4YxFGiDxqXbsKfd0765d5",
        },
      ),
    );
    return response;
  }
}
