import 'package:codeit_student_portal/model/receipt_model.dart';
import 'package:codeit_student_portal/services/receipt_service.dart';
import 'package:get/get.dart';

class ReceiptController extends GetxController {
  var receipt = ReceiptModel(success: false, data: []).obs;
  var isLoading = false.obs;

  Future showReceipt() async {
    try {
      isLoading(true);
      var response = await ReceiptService.fetchReceipt();
      if (response.statusCode == 200) {
        receipt.value = ReceiptModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    showReceipt();
  }
}
