// import 'package:codeit_student_portal/model/show_ticket_model.dart';
// import 'package:codeit_student_portal/services/show_ticket_service.dart';
// import 'package:get/get.dart';

// class TicketController extends GetxController {
//   var ticket = ShowTicketModel(success: false, data: []).obs;
//   var isLoading = false.obs;

//   @override
//   void onInit() {
//     getTickets();
//     super.onInit();
//   }

//   Future<void> getTickets() async {
//     //print("get ticket calling");
//     try {
//       isLoading(true);

//       var response = await ShowTicketService.getTickets();

//       if (response.statusCode == 200) {
//         ticket.value = ShowTicketModel.fromJson(response.data);
//       }
//     } catch (e) {
//       print("Fetch Error: $e");
//     } finally {
//       isLoading(false);
//     }
//   }

//   Future<bool> createTicket({
//     required String category,
//     required String subject,
//     required String description,
//   }) async {
//     try {
//       isLoading(true);

//       var response = await ShowTicketService.createTicket(
//         category: category,
//         subject: subject,
//         description: description,
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final newTicket = Datum(
//           category: category,
//           subject: subject,
//           description: description,
//           status: "open",
//         );

//         ticket.update((val) {
//           val?.data.insert(0, newTicket);
//         });

//         return true;
//       }

//       return false;
//     } catch (e) {
//       print("Error: $e");
//       return false;
//     } finally {
//       isLoading(false);
//     }
//   }
// }
