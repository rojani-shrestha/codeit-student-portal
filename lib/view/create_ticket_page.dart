//import 'package:codeit_student_portal/controller/support_controller.dart';
import 'package:codeit_student_portal/controller/post_ticket_controller.dart';
import 'package:codeit_student_portal/view/support_page.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
//import 'package:codeit_student_portal/controller/ticket_controller.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CreateTicketPage extends StatefulWidget {
  const CreateTicketPage({super.key});

  @override
  State<CreateTicketPage> createState() => _CreateTicketPageState();
}

class _CreateTicketPageState extends State<CreateTicketPage> {
  String? selectedValue;
  final subController = TextEditingController();
  final desController = TextEditingController();
  var isControlPage = true.obs;

  final ticketController = Get.find<PostTicketController>();

  List<String> supportTicket = [
    "General support",
    "Technical support",
    "Counselling support",
    "Internship support",
  ];

  Map<String, String> categoryMap = {
    "General support": "general",
    "Technical support": "technical",
    "Counselling support": "counselling",
    "Internship support": "internship",
  };

  @override
  void dispose() {
    subController.dispose();
    desController.dispose();
    super.dispose();
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
        backgroundColor: Colors.orange.shade100,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Gap(3.5),
                        Text("Home", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  Gap(7),
                  Text(">", style: TextStyle(fontSize: 20)),
                  Gap(7),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return SupportPage();
                          },
                        ),
                      );
                    },
                    child: Text("Support", style: TextStyle(fontSize: 15)),
                  ),
                  Gap(7),
                  if (isControlPage.value) ...[
                    Text(">", style: TextStyle(fontSize: 20)),
                    Gap(7),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) {
                        //       return ReceiptDetailsPage(slip: slip);
                        //     },
                        //   ),
                        // );
                      },
                      child: Text("New Ticket", style: TextStyle(fontSize: 15)),
                    ),
                  ],
                ],
              ),
            ),
            Gap(20),
            Text(
              "Create Support Ticket",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Text(
              "Describe your issue -- we'll respond as",
              style: TextStyle(fontSize: 16),
            ),
            Text("soon as possible.", style: TextStyle(fontSize: 16)),
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.airplane_ticket, color: Colors.orange.shade700),
                  Text(
                    "Ticket Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              // height: 470,
              width: 315,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    child: DropdownButtonFormField<String>(
                      initialValue: selectedValue,

                      hint: Text("Select Support"),
                      decoration: InputDecoration(border: InputBorder.none),
                      items: supportTicket.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                  Gap(20),

                  Row(
                    children: [
                      Text(
                        "Subject",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: subController,
                          decoration: InputDecoration(
                            hintText: "e.g. Cannot access courses...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(30),
                  Row(
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text("*", style: TextStyle(color: Colors.redAccent)),
                    ],
                  ),
                  Container(
                    //height: 153,
                    width: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Card(
                      elevation: 3,
                      child: TextField(
                        maxLines: 5,
                        controller: desController,
                        decoration: InputDecoration(
                          hintText: "Please explain the error",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Gap(23),
                  Obx(
                    () => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade700,
                      ),

                      onPressed: ticketController.isLoading.value
                          ? null
                          : () async {
                              if (selectedValue == null ||
                                  subController.text.isEmpty ||
                                  desController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Please fill all fields"),
                                  ),
                                );
                                return;
                              }
                              final category = categoryMap[selectedValue];

                              if (category == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Invalid category selected"),
                                  ),
                                );
                                return;
                              }

                              final success = await ticketController.postTicket(
                                category: category,
                                subject: subController.text.trim(),
                                description: desController.text.trim(),
                              );

                              if (success) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Ticket submitted successfully",
                                    ),
                                  ),
                                );
                                //clear form after success
                                setState(() {
                                  selectedValue = null;
                                  subController.clear();
                                  desController.clear();
                                });
                                Future.delayed(Duration(milliseconds: 500), () {
                                  Get.back();
                                });
                              }
                            },

                      child: ticketController.isLoading.value
                          ? CircularProgressIndicator(color: Colors.white)
                          : SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.send, color: Colors.white),
                                  Gap(5),
                                  Text(
                                    "Submit Ticket",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
