import 'package:codeit_student_portal/controller/certificate_controller.dart';
import 'package:get/get.dart';

class CertControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CertificateController>(CertificateController(), permanent: true);
  }
}
