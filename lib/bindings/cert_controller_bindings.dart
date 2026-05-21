import 'package:codeit_student_portal/controller/certificate_controller_api.dart';
import 'package:codeit_student_portal/controller/condition_controller.dart';
import 'package:codeit_student_portal/controller/coursemodel_controller.dart';
import 'package:codeit_student_portal/controller/download_controller.dart';
import 'package:codeit_student_portal/controller/download_receipt_controller.dart';
import 'package:codeit_student_portal/controller/get_ticket_controller.dart';
import 'package:codeit_student_portal/controller/googlelink_controller.dart';
import 'package:codeit_student_portal/controller/my_courses_controller.dart';
import 'package:codeit_student_portal/controller/notes_controller.dart';
import 'package:codeit_student_portal/controller/post_feedback_controller.dart';
import 'package:codeit_student_portal/controller/post_ticket_controller.dart';
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
    Get.put<GetTicketController>(GetTicketController(), permanent: true);
    Get.put<DownloadReceiptController>(
      DownloadReceiptController(),
      permanent: true,
    );
    Get.put<ConditionController>(ConditionController(), permanent: true);
    Get.lazyPut<PostTicketController>(() => PostTicketController());
    Get.lazyPut<PostFeedbackController>(
      () => PostFeedbackController(),
    ); //for refresh frequently or required
    Get.put<CourseController>(CourseController(), permanent: true);
    Get.put<MyCoursesController>(MyCoursesController(), permanent: true);
    Get.put<NotesController>(NotesController(), permanent: true);
    Get.put<GooglelinkController>(GooglelinkController(), permanent: true);
  }
}
