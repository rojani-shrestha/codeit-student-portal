import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class DownloadReceiptService {
  static Future<Response> getReceipt(int receiptId) async {
    var response = await DioConnector.dio.get(
      "download-receipt/$receiptId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 6524|X1h384KoNHrRFu43wVdBYvZ1PyvphURkjGn3WBog99aae426",
        },
      ),
    );
    return response;
  }
}
