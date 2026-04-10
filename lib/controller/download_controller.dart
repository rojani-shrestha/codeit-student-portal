import 'package:codeit_student_portal/model/download_model.dart';
import 'package:codeit_student_portal/services/download_service.dart';
import 'package:get/get.dart';

class DownloadController extends GetxController {
  var download =  DownloadModel(success: false, message: "Hello").obs;
  var isSend = false.obs;

  Future downloadCertificate(int certificateId) async {
    try {
      isSend(true);
      var response = await DownloadService.downloading(certificateId);
      if (response.statusCode == 200) {
        download.value = DownloadModel.fromJson(response.data);
      }
    } finally {
      isSend(false);
    }
  }
}
