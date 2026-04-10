import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:codeit_student_portal/view/receipt_details_page.dart';
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
        title: Text("My Receipt"),
        backgroundColor: Colors.orange.shade100,
      ),
      body: Obx(() {
        if (receiptControl.isLoading.value == true) {
          return Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
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
                          Get.to(ReceiptDetailsPage());
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
                                          ),
                                          Gap(5),
                                          Text(
                                            "| Date: ${slip.enrolledDate}",
                                            style: TextStyle(fontSize: 14),
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
    );
  }
}
