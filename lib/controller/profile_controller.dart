import 'package:codeit_student_portal/model/profile_model.dart';
import 'package:codeit_student_portal/services/profile_service.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var profile = ProfileModel(
    success: false,
    user: User(id: 4219, name: "", email: "", phone: "", countryCode: ""),
  ).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProfile();
    super.onInit();
  }

  Future<void> fetchProfile() async {
    try {
      isLoading(true);
      var response = await ProfileService.getProfile();
      if (response.statusCode == 200) {
        profile.value = ProfileModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }
}
