import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class MyCourseService {
  static Future<Response> fetchCourses(int enrollmentId) async {
    var response = await DioConnector.dio.get(
      "course/$enrollmentId",
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
