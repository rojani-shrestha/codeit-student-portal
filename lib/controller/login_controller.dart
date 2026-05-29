import 'package:codeit_student_portal/model/login_model.dart';
import 'package:codeit_student_portal/services/login_service.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var login = LoginModel(success: false, token: "", message: "").obs;
  var isLoading = false.obs;
  final _storage = GetStorage();

  Future<void> fetchLogin(String email, String password) async {
    try {
      isLoading(true);
      var response = await LoginService.pushLogin(email, password);
      if (response.statusCode == 200) {
        login.value = LoginModel.fromJson(response.data);
        if (login.value.success == true) {
          // Fix 1: Token save garne
          _storage.write('token', login.value.token);
          print("TOKEN SAVED: ${login.value.token}");
          Get.snackbar("Success", "Login Successful");
          Get.offAll(() => DashboardView());
        } else {
          Get.snackbar("Error", "Login failed");
        }
      }
    } finally {
      isLoading(false);
    }
  }
}
