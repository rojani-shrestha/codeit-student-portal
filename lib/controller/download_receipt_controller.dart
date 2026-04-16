import 'package:codeit_student_portal/model/download_receipt_model.dart';
import 'package:codeit_student_portal/services/download_receipt_service.dart';
import 'package:get/get.dart';

class DownloadReceiptController extends GetxController {
  var downloadReceipt = DownloadReceiptModel(success: false, message: "").obs;
  var isReceiptSend = false.obs;

  Future<DownloadReceiptModel?> fetchReceipt(int receiptId) async {
    try {
      isReceiptSend(true);
      var response = await DownloadReceiptService.getReceipt(receiptId);
      if (response.statusCode == 200) {
        final result = DownloadReceiptModel.fromJson(response.data);
        downloadReceipt.value = result;
        return result;
      }
      return null;
    } finally {
      isReceiptSend(false);
    }
  }
}
