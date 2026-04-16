import 'package:codeit_student_portal/model/get_ticket_model.dart';
import 'package:codeit_student_portal/services/get_ticket_service.dart';
import 'package:get/get.dart';

class GetTicketController extends GetxController {
  var isLoading = false.obs;
  var ticket = GetTicketModel(success: false, data: []).obs;
  @override
  void onInit() {
    super.onInit();
    getTickets();
  }

  Future<void> getTickets() async {
    try {
      isLoading(true);
      final result = await GetTicketService.getTickets();

      if(result != null) {
        ticket.value = result;
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to load tickets");
    } finally {
      isLoading(false);
    }
  }
}
