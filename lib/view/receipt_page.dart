import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/view/receipt_details_page.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ReceiptPage extends GetView<ReceiptController> {
  const ReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    var receiptControl = Get.find<ReceiptController>();

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
      body: Obx(() {
        if (receiptControl.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() =>DashboardView());
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
                        onTap: () {},
                        child: Text(
                          "Payment Receipts",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Receipts",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(23),
                ListView.builder(
                  itemCount: receiptControl.receipt.value.data.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var slip = receiptControl.receipt.value.data[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.off(() =>ReceiptDetailsPage(slip: slip));
                        },
                        child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.payment_sharp,
                                  color: Color(0xFF10A3D1),
                                ),
                                Gap(5),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "${slip.courseName}",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Amount: ${slip.amount}",
                                            style: TextStyle(fontSize: 14),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Gap(5),
                                          Text(
                                            "| Date: ${slip.enrolledDate}",
                                            style: TextStyle(fontSize: 14),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        }
      }),
      drawer: DrawerPage(),
    );
  }
}
