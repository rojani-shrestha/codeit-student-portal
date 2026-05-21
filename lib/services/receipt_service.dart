import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ReceiptService {
  static Future<Response> fetchReceipt() async {
    var response = await DioConnector.dio.get(
      "show-receipt",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10155|PFZFtPA07GEhDAMWmGIWQNpO4ClCbGsw3kyTj1249674fe6d", //Bearer is important
        },
      ),
    );
    return response;
  }
}
