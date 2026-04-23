import 'package:codeit_student_portal/view/create_ticket_page.dart';
import 'package:codeit_student_portal/view/ticket_list_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  void _openCreateTicket() {
    Get.to(CreateTicketPage());
  }

  Widget _buildCard({
    required Color circleColor,
    required Color iconColor,
    required IconData icon,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                backgroundColor: circleColor,
                foregroundColor: iconColor,
                radius: 30,
                child: Icon(icon, size: 40, color: iconColor),
              ),
            ),
            const Gap(30),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Questions about courses, payments, schedule,",
              style: TextStyle(fontSize: 14),
            ),
            const Text(
              "enrollment or other general inquiries.",
              style: TextStyle(fontSize: 14),
            ),
            const Gap(29),
            const Divider(),
            GestureDetector(
              onTap: _openCreateTicket,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Ticket",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF6900),
                    ),
                  ),
                  Icon(Icons.arrow_forward_sharp, color: Color(0xFFFF6900)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.home),
                        Gap(3.5),
                        Text("Home", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  const Gap(7),
                  const Text(">", style: TextStyle(fontSize: 20)),
                  const Gap(7),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Support",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "How can we help you today?",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const Text("Choose the category that best matches"),
            const Text("your question and we'll get back to you"),
            const Text("quickly."),

            _buildCard(
              circleColor: Colors.blue.shade100,
              iconColor: Colors.blue.shade600,
              icon: Icons.help,
              title: "General Support",
            ),

            const Gap(23),

            _buildCard(
              circleColor: Colors.red.shade100,
              iconColor: Colors.red,
              icon: Icons.healing_sharp,
              title: "Technical Support",
            ),

            const Gap(23),

            _buildCard(
              circleColor: Colors.green.shade200,
              iconColor: Colors.green.shade700,
              icon: Icons.school,
              title: "Counseling Support",
            ),

            const Gap(23),

            _buildCard(
              circleColor: Colors.purple.shade200,
              iconColor: Colors.deepPurple,
              icon: Icons.groups_outlined,
              title: "Internship Support",
            ),

            const Gap(50),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade700,
                ),
                onPressed: () {
                  Get.to(TicketListPage());
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.list_alt_rounded, color: Colors.white),
                    Gap(5),
                    Text(
                      "View My Existing Tickets",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
