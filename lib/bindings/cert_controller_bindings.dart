import 'package:codeit_student_portal/controller/certificate_controller_api.dart';
import 'package:codeit_student_portal/controller/download_controller.dart';
import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:get/get.dart';

class CertControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CertificateControllerApi>(
      CertificateControllerApi(),
      permanent: true,
    );
    Get.put<DownloadController>(DownloadController(), permanent: true);
    Get.put<ReceiptController>(ReceiptController(), permanent: true);
  }
}
