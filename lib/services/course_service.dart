import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';


class CourseService {
  static Future<Response> fetchCourse(int enrollmentId) async {
    var response = await DioConnector.dio.get(
      "courses",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 8591|70JQoLf0aWzWESqmAyWiIAYAW5As0PZJiU5eWFD2546af2fd",
        },
      ),
    );
    return response;
  }
}
