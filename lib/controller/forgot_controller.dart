import 'package:codeit_student_portal/model/forgot_model.dart';
import 'package:codeit_student_portal/services/forgot_service.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  var forgot = ForgotModel(success: false, message: "").obs;
  var isLoading = false.obs;

  Future<void> getForgot(String email) async {
    try {
      isLoading(true);
      var response = await ForgotService.fetchOtp(email);

      if (response.statusCode == 200) {
        forgot.value = ForgotModel.fromJson(response.data);
        
        if (forgot.value.success == true) {
          Get.snackbar("Success", forgot.value.message ?? "OTP Sent");
        } else {
          Get.snackbar("Error", forgot.value.message ?? "Failed");
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
