import 'package:codeit_student_portal/controller/certificate_controller_api.dart';
import 'package:codeit_student_portal/controller/download_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CertificatePageApi extends GetView<CertificateControllerApi> {
  const CertificatePageApi({super.key});

  @override
  Widget build(BuildContext context) {
    var certificateController = Get.find<CertificateControllerApi>();
    var certificateDownloader = Get.find<DownloadController>();

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
        // backgroundColor: Colors.orange.shade100,
      ),

      body: Obx(() {
        if (certificateController.isLoading.value == true) {
          return CircularProgressIndicator();
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
                          "Certificate",
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
                        "My Certificate",
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
                  itemCount:
                      certificateController.certificate.value.data.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var cert =
                        certificateController.certificate.value.data[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 3,
                        child: ListTile(
                          title: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    color: Color(0xFFFF6900),
                                  ),
                                  Gap(5),
                                  Text(
                                    "${cert.courseName}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Gap(21),
                              Row(
                                children: [
                                  Icon(Icons.school_sharp),
                                  Gap(5),
                                  Column(
                                    children: [
                                      Text(
                                        "Issued to",
                                        style: TextStyle(fontSize: 10),
                                        textAlign: TextAlign.left,
                                      ),

                                      Text(
                                        "${cert.issuedTo}",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(10),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month_outlined),
                                  Gap(5),
                                  Column(
                                    children: [
                                      Text(
                                        "Date Completed",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "${cert.courseCompletionDate}",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Gap(21),
                              Obx(
                                () => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // alignment: Alignment.center,
                                  ),
                                  onPressed: certificateDownloader.isSend.value
                                      ? null
                                      : () async {
                                         // print("certificate");
                                          await certificateDownloader
                                              .downloadCertificate(
                                                cert.certificateId ?? 0,
                                              );
                                          if (certificateDownloader
                                              .download
                                              .value
                                              .success!) {
                                            Get.snackbar(
                                              "Success",
                                              "Certificate sent to your email",
                                              snackPosition:
                                                  SnackPosition.BOTTOM,
                                            );
                                          } else {
                                            Get.snackbar(
                                              "Error",
                                              "error aayo hai code ma",
                                              snackPosition:
                                                  SnackPosition.BOTTOM,
                                            );
                                          }
                                        },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.download,
                                        color: Color(0xFFFF6900),
                                        size: 20,
                                      ),
                                      Gap(5),
                                      Text(
                                        "Download Certificates",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFF6900),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // subtitle: Text("${cert.certificateId}"),
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
      drawer: Drawer(),
    );
  }
}
