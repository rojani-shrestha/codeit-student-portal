import 'package:codeit_student_portal/model/register_model.dart';
import 'package:codeit_student_portal/services/register_service.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var register = RegisterModel(success: false, token: "", message: "").obs;
  var isLoading = false.obs;

  Future<void> fetchRegister(
    String name,
    String email,
    String whatsapp,
    String password,
    String country,
  ) async {
    try {
      isLoading(true);
      var response = await RegisterService.pushRegister(
        name,
        email,
        whatsapp,
        password,
        country,
      );
      if (response.statusCode == 200) {
        register.value = RegisterModel.fromJson(response.data);
        if (register.value.success == true) {
          Get.snackbar("Success", "Acount Create Successfully");
          Get.offAll(() => LoginView());
        } else {
          Get.snackbar("Sorry", "Failed to create account");
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
