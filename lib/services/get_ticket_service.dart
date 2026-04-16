import 'package:codeit_student_portal/model/get_ticket_model.dart';
import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class GetTicketService {
  static Future<GetTicketModel?> getTickets() async {
    try {
      final response = await DioConnector.dio.get(
        "show-ticket",
        options: Options(
          headers: {
            "Authorization":
                "Bearer 6524|X1h384KoNHrRFu43wVdBYvZ1PyvphURkjGn3WBog99aae426",
          },
        ),
      );
      return GetTicketModel.fromJson(response.data);
    } catch (e) {
      print("Ticket Error: $e");
      return null;
    }
  }
}
