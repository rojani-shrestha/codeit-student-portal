import 'package:codeit_student_portal/model/post_ticket_model.dart';
import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class PostTicketService {
  static Future<PostTicketModel?> postTicket({
    required String category,
    required String subject,
    required String description,
  }) async {
    try {
      final response = await DioConnector.dio.post(
        "support-ticket",
        options: Options(
          headers: {
            "Authorization":
                "Bearer 6524|X1h384KoNHrRFu43wVdBYvZ1PyvphURkjGn3WBog99aae426",
          },
        ),
        data: {
          "category": category,
          "subject": subject,
          "message": description,
        },
      );
      return PostTicketModel.fromJson(response.data);
    } on DioException catch (e) {
      print("Error: ${e.response?.data}");
      return null;
    }
  }
}
