import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class MyCourseService {
  static Future<Response> fetchCourses(int enrollmentId) async {
    var response = await DioConnector.dio.get(
      "course/$enrollmentId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 8791|q6DJNJqVRHipUnzRtFVjZTurb6tl7NdeTO8uhF493ef525f1",
        },
      ),
    );
    return response;
  }
}
