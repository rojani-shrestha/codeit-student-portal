//import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:codeit_student_portal/controller/download_receipt_controller.dart';
import 'package:codeit_student_portal/model/receipt_model.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ReceiptDetailsPage extends GetView<DownloadReceiptController> {
  final Datum slip;
  const ReceiptDetailsPage({super.key, required this.slip});

  @override
  Widget build(BuildContext context) {
    var receiptController = Get.find<DownloadReceiptController>();
    var isControlPage = true.obs;
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(
              () => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade700,
                ),
                onPressed: receiptController.isReceiptSend.value
                    ? null
                    : () async {
                        final result = await receiptController.fetchReceipt(
                          slip.receiptId ?? 0,
                        );

                        // final result = receiptController.downloadReceipt.value;

                        if (result != null && result.success == true) {
                          Get.snackbar(
                            "Success",
                            "Receipt sent to your email",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        } else {
                          Get.snackbar(
                            "Error",
                            "Failed to send receipt",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      },
                child: Row(
                  children: [
                    Icon(Icons.print, color: Colors.white),
                    Text(
                      "Print Receipt",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        // backgroundColor: Colors.orange.shade100,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(DashboardView());
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
                                  return ReceiptPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Payment Receipts",
                            style: TextStyle(fontSize: 15),
                          ),
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
                            child: Text(
                              "Receipt",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),

                  Text(
                    "Payment Receipt",
                    style: TextStyle(
                      fontSize: 24,
                      //letterSpacing: 4,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text("${slip.courseName}", style: TextStyle(fontSize: 16)),
                  Gap(33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/codeit.png",
                        height: 64,
                        width: 270,
                      ),
                    ],
                  ),
                  Gap(43),
                  SizedBox(
                    width: 173,
                    height: 190,
                    child: Column(
                      children: [
                        Text("Transaction ID"),
                        Text(
                          "Rs.${slip.amount}",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(20),
                        Text("Date"),
                        Text(
                          "${slip.enrolledDate}",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(20),
                        Text("Payment Status"),
                        Container(
                          width: 83,
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF138023),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.cloud_done_outlined),
                                Gap(10),
                                Text("Paid"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    // width: 390,
                    // height: 170,
                    child: Padding(
                      // padding: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student Details",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(15),
                          Row(
                            children: [
                              Text("Full Name:"),
                              Gap(30),
                              Text("Ayush Limbu"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("WhatsApp:"),
                              Gap(30),
                              Text("9816301514"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Email:"),
                              Gap(30),
                              Text("scropionlimbu@gmail.com"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Institution:"),
                              Gap(30),
                              Text("Code IT"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(23),
                  SizedBox(
                    // height: 220,
                    // width: 390,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Course Details",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(15),
                          Card(
                            elevation: 4,
                            surfaceTintColor:
                                Colors.greenAccent, // card vitra ko color
                            shadowColor: Colors.orange.shade700,
                            // color: Colors.orange.shade400,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Enrolled Course"),
                                  Text(
                                    "${slip.courseName}",
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Amount Paid:",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        "Rs.${slip.amount}",
                                        style: TextStyle(
                                          color: Colors.orange.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(24),
                  SizedBox(
                    height: 143,
                    width: 390,
                    child: Column(
                      children: [
                        Text(
                          "Thank you for choosing CODE IT. This is a",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "computer-generated receipt.",
                          style: TextStyle(fontSize: 14),
                        ),
                        Gap(8),
                        Text(
                          "For any queries, contact",
                          style: TextStyle(fontSize: 14),
                        ),
                        Gap(8),
                        Text(
                          "support@codeit.com.np | Reg No.",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "11757/6371/04 | PAN 602345817",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
