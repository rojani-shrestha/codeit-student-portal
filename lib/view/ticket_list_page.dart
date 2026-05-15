import 'package:codeit_student_portal/controller/get_ticket_controller.dart';
//import 'package:codeit_student_portal/controller/post_ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketListPage extends StatefulWidget {
  const TicketListPage({super.key});

  @override
  State<TicketListPage> createState() => _TicketListPageState();
}

class _TicketListPageState extends State<TicketListPage> {
  final ticketController = Get.find<GetTicketController>();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      // refresh tickets (if method exists)
      ticketController.getTickets();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 87,
              decoration: BoxDecoration(
                color: const Color(0xFFFF6900),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(Icons.person, color: Colors.white),
                  Gap(5),
                  Text("Name", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],

        //backgroundColor: Colors.orangeAccent.shade200,
      ),
      body: Obx(() {
        if (ticketController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final tickets = ticketController.ticket.value.data;

        if (tickets.isEmpty) {
          return const Center(child: Text("No tickets found"));
        }

        return ListView.builder(
          itemCount: tickets.length,
          itemBuilder: (context, index) {
            final item = tickets[index];

            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.category ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item.subject ?? "",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(item.description ?? ""),
                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: item.status == "open"
                                ? Colors.green.shade100
                                : Colors.red.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            item.status ?? "",
                            style: TextStyle(
                              color: item.status == "open"
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
