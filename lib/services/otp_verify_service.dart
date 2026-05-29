import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class OtpVerifyService {
  static Future<Response> pushOtp(String email, String otp) async {
    var response = await DioConnector.dio.post(
      "verify-otp",
      data: {
        "email": email,
        "otp": otp
      },
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
