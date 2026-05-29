import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class LoginService {
  static Future<Response> pushLogin(String email, String password) async {
    var response = await DioConnector.dio.post(
      "login",
      data: {
        "email": email,
        "password": password
      },
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10678|fnUIXdPuEs8ZaQ46u70NlRrw8EGLic9BPUa74Qhy8a50528d",
        },
      ),
    );
    return response;
  }
}
