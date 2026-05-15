import 'package:codeit_student_portal/model/post_feedback_model.dart';
import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class PostFeedbackService {
  static Future<PostFeedbackModel> postFeedback(String feedback) async {
    try {
      final response = await DioConnector.dio.post(
        "suggestions",
        options: Options(
          headers: {
            "Authorization":
                "Bearer 8039|1xa68fdlF7ie3M3aTXEO5xV5SOKhyXWQ6c3lmidP1d76b88b",
          },
        ),
        data: {"message": feedback},
      );
      print("API RESPONSE: ${response.data}");
      if (response.data != null) {
        return PostFeedbackModel.fromJson(response.data);
      } else {
        throw Exception("Empty response");
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data ?? "Error aayo hai");
    }
  }
}
