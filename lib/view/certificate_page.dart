import 'package:codeit_student_portal/controller/certificate_controller.dart';
import 'package:codeit_student_portal/view/receipt_details_page.dart';
//import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CertificatePage extends GetView<CertificateController> {
  const CertificatePage({super.key});

  //final controller = Get.put(CertificateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CODE IT",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFF85604),
        toolbarHeight: 55.98,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Documents",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(11.99),

              Obx(
                () => Row(
                  children: [
                    FilledButton(
                      onPressed: () => controller.toggleTab(true),
                      style: FilledButton.styleFrom(
                        backgroundColor: controller.isCertificateSelected.value
                            ? Color(0xFFF85604)
                            : Color(0xFFFFFFFF),
                        minimumSize: Size(176.52, 37.51),
                      ),
                      child: Text(
                        "Certificates",
                        style: TextStyle(
                          color: controller.isCertificateSelected.value
                              ? Colors.white
                              : Color(0xFF6B7280),
                        ),
                      ),
                    ),
                    Gap(7.99),
                    FilledButton(
                      onPressed: () => controller.toggleTab(false),
                      style: FilledButton.styleFrom(
                        backgroundColor: controller.isCertificateSelected.value
                            ? Color(0xFFFFFFFF)
                            : Color(0xFFF85604),
                        minimumSize: Size(176.52, 37.51),
                      ),
                      child: Text(
                        "Recipts",
                        style: TextStyle(
                          color: controller.isCertificateSelected.value
                              ? Color(0xFF6B7280)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Gap(20),

              Obx(
                () => controller.isCertificateSelected.value
                    ? SizedBox.shrink()
                    : Container(
                        //height: 104,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFFF85604),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Investment",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Rs. 55,000",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "4 transactions",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),

              Gap(20),

              Obx(
                () => controller.isCertificateSelected.value
                    ? SizedBox.shrink()
                    : Text(
                        "Transaction History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
              ),

              Expanded(
                child: Obx(
                  () => controller.isCertificateSelected.value
                      ? _buildCertificateList()
                      : _buildReceiptList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCertificateList() {
    return ListView.builder(
      itemCount: controller.certificates.length,
      itemBuilder: (context, index) {
        final cert = controller.certificates[index];

        return Container(
          //height: 126,
          width: 361,
          margin: const EdgeInsets.only(bottom: 12),
          //padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFF3F4F6),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.menu_book),
                      Gap(12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cert.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Text(cert.date, style: TextStyle(fontSize: 12)),
                            Text(cert.id, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Certificate is downloaded");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.file_download_outlined),
                        Gap(5),
                        Text(
                          "Download Certificate",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildReceiptList() {
    return ListView.builder(
      itemCount: controller.receipt.length,
      itemBuilder: (context, index) {
        final receipt = controller.receipt[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(12),

            Container(
              width: double.infinity,
              // height: 133,
              margin: const EdgeInsets.only(bottom: 12),
              // padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFE0F2FE),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.receipt_long),
                        Gap(12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    receipt.rname,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    receipt.pay,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    receipt.rdate,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    receipt.status,
                                    style: TextStyle(
                                      color: Colors.greenAccent.shade700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(receipt.rid, style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          //print("Receipt is downloaded");
                          Get.to(ReceiptDetailsPage());
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.file_download_outlined),
                            Gap(5),
                            Text(
                              "Download Receipt",
                              style: TextStyle(fontSize: 12),
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
        );
      },
    );
  }
}
