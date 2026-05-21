import 'package:codeit_student_portal/model/googlelink_model.dart';
import 'package:codeit_student_portal/services/googlelink_service.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class GooglelinkController extends GetxController {
  var google = GoogleLinkModel(success: false, data: []).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    getLink();
    super.onInit();
  }

  Future<void> getLink() async {
    try {
      isLoading(true);
      var response = await GooglelinkService.fetchLink();
      print(response.data);
      if (response.statusCode == 200) {
        google.value = GoogleLinkModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }

  Future<void> openLink() async {
    try {
      if (google.value.data.isEmpty) {
        Get.snackbar("Error", "Google meet link not found");
        return;
      }
      String link = google.value.data[0];
      final Uri url = Uri.parse(link);
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      Get.snackbar("Error", "Link not open");
    }
  }
}
