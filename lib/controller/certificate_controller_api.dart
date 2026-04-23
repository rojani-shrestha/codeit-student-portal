import 'package:codeit_student_portal/model/certificate_models.dart';
import 'package:codeit_student_portal/services/certificate_service.dart';
import 'package:get/get.dart';

class CertificateControllerApi extends GetxController {
  var certificate = CertificateModel(success: false, data: []).obs;
  var isLoading = false.obs;

  Future getCertificate() async {
    try {
      isLoading(true);
      var response = await CertificateService.fetchCertificate();
      if (response.statusCode == 200) {
        certificate.value = CertificateModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCertificate();
  }
}
