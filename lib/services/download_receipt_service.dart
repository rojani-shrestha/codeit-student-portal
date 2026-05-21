import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class DownloadReceiptService {
  static Future<Response> getReceipt(int receiptId) async {
    var response = await DioConnector.dio.get(
      "download-receipt/$receiptId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 10155|PFZFtPA07GEhDAMWmGIWQNpO4ClCbGsw3kyTj1249674fe6d",
        },
      ),
    );
    return response;
  }
}
