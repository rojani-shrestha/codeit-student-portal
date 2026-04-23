import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ReceiptService {
  static Future<Response> fetchReceipt() async {
    var response = await DioConnector.dio.get(
      "show-receipt",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6276|pwaToI5Pp56qidCX8ifdYNuhB0ZLqxYni4yBQnhm631c6994", //Bearer is important
        },
      ),
    );
    return response;
  }
}
