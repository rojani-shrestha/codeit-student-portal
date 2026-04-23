import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ReceiptService {
  static Future<Response> fetchReceipt() async {
    var response = await DioConnector.dio.get(
      "show-receipt",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6410|oe3pRNkKEi9FEym0ORSJinFLhcVGLnDisLIHpFwoa4730c0c", //Bearer is important
        },
      ),
    );
    return response;
  }
}
