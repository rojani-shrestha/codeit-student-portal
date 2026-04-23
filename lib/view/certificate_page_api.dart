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
        title: Text(
          "My Certificate",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange.shade100,
      ),

      body: Obx(() {
        if (certificateController.isLoading.value == true) {
          return CircularProgressIndicator();
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
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
                                          print("certificate");
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
    );
  }
}
