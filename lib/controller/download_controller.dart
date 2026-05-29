import 'package:codeit_student_portal/model/download_model.dart';
import 'package:codeit_student_portal/services/download_service.dart';
import 'package:get/get.dart';

class DownloadController extends GetxController {
  var download = DownloadModel(success: false, message: "").obs;
  var isSend = false.obs;

  @override
  void onInit() {
    downloadCertificate(0);
    super.onInit();
  }

  Future downloadCertificate(int certicateId) async {
    try {
      isSend(true);
      var response = await DownloadService.downloading(certicateId);

      if (response.statusCode == 200) {
        download.value = DownloadModel.fromJson(response.data);
      }
    } finally {
      isSend(false);
    }
  }
}
