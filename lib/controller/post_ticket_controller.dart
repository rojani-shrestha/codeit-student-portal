import 'package:codeit_student_portal/model/post_ticket_model.dart';
import 'package:codeit_student_portal/services/post_ticket_service.dart';
import 'package:get/get.dart';

class PostTicketController extends GetxController {
  var ticket = PostTicketModel(success: false, message: "").obs;
  var isLoading = false.obs;

  Future<bool> postTicket({
    required String category,
    required String subject,
    required String description,
  }) async {
    try {
      isLoading(true);
      final result = await PostTicketService.postTicket(
        category: category,
        subject: subject,
        description: description,
      );

      if (result != null && result.success == true) {
        ticket.value = result;
        //Get.snackbar("Success", "Ticket created successfully");
        return true;
      } else {
        Get.snackbar("Error", result?.message ?? "Something went wrong");
        return false;
      }
    } finally {
      isLoading(false);
    }
  }
}
