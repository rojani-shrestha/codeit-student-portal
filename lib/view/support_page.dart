import 'package:codeit_student_portal/view/create_ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support Screen"),
      backgroundColor: Colors.orange.shade100,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "How can we help you today?",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text("Choose the category that best matches"),
            Text("your question and we'll get back to you"),
            Text("quickly."),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade100,
                        foregroundColor: Colors.blue.shade600,
                        radius: 30,
                        child: Icon(Icons.help, size: 40),
                      ),
                    ),
                    Gap(30),
                    Text(
                      "General Support",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Questions about courses, payments, schedule,",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "enrollment or other general inquiries.",
                      style: TextStyle(fontSize: 14),
                    ),
                    Gap(29),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Get.to(CreateTicketPage());
                      },
                      child: Row(
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
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Color(0xFFFF6900),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(23),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.red.shade100,
                        foregroundColor: Colors.red,
                        radius: 30,
                        child: Icon(Icons.healing_sharp, size: 40),
                      ),
                    ),
                    Gap(30),
                    Text(
                      "Technical Support",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Questions about courses, payments, schedule,",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "enrollment or other general inquiries.",
                      style: TextStyle(fontSize: 14),
                    ),
                    Gap(29),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Get.to(CreateTicketPage());
                      },
                      child: Row(
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
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Color(0xFFFF6900),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(23),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.green.shade200,
                        //foregroundColor: Colors.green,
                        radius: 30,
                        child: Icon(
                          Icons.school,
                          color: Colors.green.shade700,
                          size: 40,
                        ),
                      ),
                    ),
                    Gap(30),
                    Text(
                      "Counseling Support",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Questions about courses, payments, schedule,",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "enrollment or other general inquiries.",
                      style: TextStyle(fontSize: 14),
                    ),
                    Gap(29),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Get.to(CreateTicketPage());
                      },
                      child: Row(
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
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Color(0xFFFF6900),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(23),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.purple.shade200,
                        //foregroundColor: Colors.white,
                        radius: 30,
                        child: Icon(
                          Icons.groups_outlined,
                          color: Colors.deepPurple,
                          size: 40,
                        ),
                      ),
                    ),
                    Gap(30),
                    Text(
                      "Internship Support",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Questions about courses, payments, schedule,",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "enrollment or other general inquiries.",
                      style: TextStyle(fontSize: 14),
                    ),
                    Gap(29),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Get.to(CreateTicketPage());
                      },
                      child: Row(
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
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Color(0xFFFF6900),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade700,
                ),
                onPressed: () {},
                child: Row(
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
    );
  }
}
