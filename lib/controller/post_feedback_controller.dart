import 'package:codeit_student_portal/model/post_feedback_model.dart';
import 'package:codeit_student_portal/services/post_feedback_service.dart';
import 'package:get/get.dart';

class PostFeedbackController extends GetxController {
  var feedbackControl = PostFeedbackModel(success: false, message: "").obs;
  var isLoading = false.obs;

  Future<void> postFeedback(String feedback) async {
    try {
      isLoading(true);
      final result = await PostFeedbackService.postFeedback(feedback);
      feedbackControl.value = result;
      if (result.success == true) {
        Get.snackbar("Success", result.message ?? "Feedback sent successfully");
      } else {
        Get.snackbar("Error", result.message ?? "Error vayo");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
