import 'package:codeit_student_portal/model/reset_model.dart';
import 'package:codeit_student_portal/services/reset_service.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
  var reset = ResetModel(success: false, message: "").obs;
  var isLoading = false.obs;

  Future<void> resetPass(String email, String otp, String password) async {
    try {
      isLoading(true);
      var response = await ResetService.pushReset(email, otp, password);
      if (response.statusCode == 200) {
        reset.value = ResetModel.fromJson(response.data);
        print("SUCCESS VALUE: ${reset.value.success}");
        print("MESSAGE: ${reset.value.message}");
      }
    } finally {
      isLoading(false);
    }
  }
}
