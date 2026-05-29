import 'package:codeit_student_portal/controller/certificate_controller_api.dart';
import 'package:codeit_student_portal/controller/condition_controller.dart';
import 'package:codeit_student_portal/controller/coursemodel_controller.dart';
import 'package:codeit_student_portal/controller/download_controller.dart';
import 'package:codeit_student_portal/controller/download_receipt_controller.dart';
import 'package:codeit_student_portal/controller/forgot_controller.dart';
import 'package:codeit_student_portal/controller/get_ticket_controller.dart';
import 'package:codeit_student_portal/controller/googlelink_controller.dart';
import 'package:codeit_student_portal/controller/login_controller.dart';
import 'package:codeit_student_portal/controller/my_courses_controller.dart';
import 'package:codeit_student_portal/controller/notes_controller.dart';
import 'package:codeit_student_portal/controller/otp_verify_controller.dart';
import 'package:codeit_student_portal/controller/post_feedback_controller.dart';
import 'package:codeit_student_portal/controller/post_ticket_controller.dart';
import 'package:codeit_student_portal/controller/profile_controller.dart';
import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:codeit_student_portal/controller/register_controller.dart';
import 'package:codeit_student_portal/controller/reset_controller.dart';
import 'package:codeit_student_portal/controller/update_profile_controller.dart';
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
    Get.put<ForgotController>(ForgotController(), permanent: true);
    Get.put<OtpVerifyController>(OtpVerifyController(), permanent: true);
    Get.put<ResetController>(ResetController(), permanent: true);
    Get.put<LoginController>(LoginController(), permanent: true);
    Get.put<RegisterController>(RegisterController(), permanent: true);
     Get.put<ProfileController>(ProfileController(), permanent: true);
      Get.put<UpdateProfileController>(UpdateProfileController(), permanent: true);
  }
}
