import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ForgotService {
  static Future<Response> fetchOtp(String email) async {
    var response = await DioConnector.dio.post(
      "forgot-password",
      data: {"email": email},
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
