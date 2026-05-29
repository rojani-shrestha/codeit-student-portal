import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class RegisterService {
  static Future<Response> pushRegister(
    String name,
    String email,
    String whatsapp,
    String password,
    String country,
    ) async {
    var response = await DioConnector.dio.post(
      "register",
      data: {
        "name": name,
        "email": email,
        "whatsapp": whatsapp,
        "password": password,
        "country": country
      },
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10686|Gz8DupURKTmfPA4lIjfXy4P6QlUXSttO1bvl4mKm717fd7a0",
        },
      ),
    );
    return response;
  }
}
