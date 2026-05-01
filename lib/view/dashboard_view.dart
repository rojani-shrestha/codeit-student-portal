import 'package:codeit_student_portal/view/certificate_page_api.dart';
import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              right: 10,
              bottom: 5,
              left: 10,
            ),
            child: Container(
              height: 30,
              width: 87,
              decoration: BoxDecoration(
                color: Color(0xFFFF6900),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
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
            Text(
              "Welcome back, Name!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Here's your learning snapshot today."),
            Gap(14),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [Icon(Icons.home), Gap(3), Text("Home")]),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.menu_book, color: Colors.blue),
                        Gap(10),
                        Column(
                          children: [
                            Text(
                              "Active Courses",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Gap(10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(() =>CertificatePageApi());
                },
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.workspace_premium, color: Colors.purple),
                        Gap(10),
                        Column(
                          children: [
                            Text("Certificate", style: TextStyle(fontSize: 18)),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Gap(10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(() =>ReceiptPage());
                },
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.receipt_long, color: Colors.orange),
                        Gap(10),
                        Column(
                          children: [
                            Text("Payment", style: TextStyle(fontSize: 18)),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      drawer: DrawerPage(),
    );
  }
}
