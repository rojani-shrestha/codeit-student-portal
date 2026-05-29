import 'package:codeit_student_portal/model/otp_verify_model.dart';
import 'package:codeit_student_portal/services/otp_verify_service.dart';
import 'package:get/get.dart';

class OtpVerifyController extends GetxController {
  var verify = OtpVerifyModel(success: false, message: "").obs;
  var isLoading = false.obs;

  Future<void> fetchOtp(String email, String otp) async {
    try {
      isLoading(true);
      var response = await OtpVerifyService.pushOtp(email, otp);
      if (response.statusCode == 200) {
        verify.value = OtpVerifyModel.fromJson(response.data);
        if (verify.value.success == true) {
          Get.snackbar(
            "Success",
            verify.value.message ?? "OTP Verify sucessfully",
          );
        } else {
          Get.snackbar("Error", verify.value.message ?? "Failed");
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
