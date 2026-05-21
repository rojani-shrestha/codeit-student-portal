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
                "Bearer 10155|PFZFtPA07GEhDAMWmGIWQNpO4ClCbGsw3kyTj1249674fe6d",
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
