// import 'package:codeit_student_portal/model/update_profile_model.dart';
// import 'package:codeit_student_portal/services/update_profile_service.dart';
// import 'package:codeit_student_portal/view/login_view.dart';
// import 'package:get/get.dart';

// class UpdateProfileController extends GetxController {
//   var updateProfile = UpdateProfileModel(success: false, message: "").obs;
//   var isLoading = false.obs;

//   Future<void> updateUser(String name, String email, String number,
//   String token,
//   ) async {
//     try {
//       isLoading(true);
//       var response = await UpdateProfileService.pushProfile(
//         name,
//         email,
//         number,
//       token
//       );
//       if (response.statusCode == 200) {
//         updateProfile.value = UpdateProfileModel.fromJson(response.data);
//         if (updateProfile.value.success == true) {
//           Get.snackbar("Success", "Update Successfully");
//           Get.offAll(() => LoginView());
//         } else {
//           Get.snackbar("Failed", "Update failed");
//         }
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
import 'package:codeit_student_portal/model/update_profile_model.dart';
import 'package:codeit_student_portal/services/update_profile_service.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
//import 'package:codeit_student_portal/view/login_view.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UpdateProfileController extends GetxController {
  var updateProfile = UpdateProfileModel(success: false, message: "").obs;
  var isLoading = false.obs;

  final _storage = GetStorage();

  // Fix: token parameter hatayo — GetStorage bata linchhau
  Future<void> updateUser(
    String name,
    String email,
    String number,
    String address,
  ) async {
    try {
      isLoading(true);

      // Token GetStorage bata
      final token = _storage.read<String>('token') ?? "";
      print("TOKEN READ: $token");

      var response = await UpdateProfileService.pushProfile(
        name,
        email,
        number,
        address,
        token,
      );
      print("RESPONSE: ${response.data}");

      if (response.statusCode == 200) {
        updateProfile.value = UpdateProfileModel.fromJson(response.data);

        if (updateProfile.value.success == true) {
          Get.snackbar("Success", "Profile updated successfully");
          Get.offAll(() => DashboardView());
        } else {
          Get.snackbar("Failed", "Update failed");
        }
      } else {
        Get.snackbar("Error", "Unexpected error: ${response.statusCode}");
      }
    } on DioException catch (e) {
      final message =
          e.response?.data?['message'] ?? e.message ?? "Something went wrong.";
      Get.snackbar("Error", message);
    } catch (e) {
      Get.snackbar("Error", "An unexpected error occurred.");
    } finally {
      isLoading(false);
    }
  }
}
