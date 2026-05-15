import 'package:codeit_student_portal/controller/certificate_controller_api.dart';
import 'package:codeit_student_portal/controller/my_courses_controller.dart';
import 'package:codeit_student_portal/controller/receipt_controller.dart';
import 'package:codeit_student_portal/view/certificate_page_api.dart';
import 'package:codeit_student_portal/view/my_course_page.dart';
import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:codeit_student_portal/widgets/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<MyCoursesController> {
  final receiptControl = Get.find<ReceiptController>();
  final certificateControl = Get.find<CertificateControllerApi>();
  DashboardView({super.key});

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

      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome back, Name!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Here's your learning snapshot today."),
              Gap(14),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(children: [Icon(Icons.home), Gap(3), Text("Home")]),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => MyCoursePage());
                  },
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(
                                0xFF22408B,
                              ).withAlpha(51), // 20% (255 * 0.2 ≈ 51),
                            ),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.menu_book,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ),
                          Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Active Courses",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                "1",
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
                    Get.to(() => CertificatePageApi());
                  },
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(
                                0xFF9A1CB9,
                              ).withAlpha(51), // 20% (255 * 0.2 ≈ 51)
                            ),
                            child: Icon(
                              Icons.workspace_premium,
                              color: Colors.purple.shade700,
                            ),
                          ),
                          Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Certificate",
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                "1",
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
                    Get.to(() => ReceiptPage());
                  },
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFF6900).withAlpha(51),
                            ),
                            child: Icon(
                              Icons.receipt_long,
                              color: Color(0xFFFF6900),
                            ),
                          ),
                          Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment",
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                "1",
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
              Gap(30),
              // for your courses design
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    Get.to(() => MyCoursePage());
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      // height: 304,
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 30,
                                width: 525,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Your Courses",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0,
                                      ),
                                    ),

                                    Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 17,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(20),
                            SizedBox(
                              height: 120,
                              // width: 110,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  bottom: 20,
                                ),
                                child: ListView.builder(
                                  // scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      controller.myCourse.value.data.length,
                                  itemBuilder: (context, index) {
                                    var courseMine =
                                        controller.myCourse.value.data[index];
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: Image.asset(
                                            "assets/image/flutter.jpg",
                                            fit: BoxFit.cover,
                                            height: 60,
                                            width: 60,
                                          ),
                                        ),

                                        // child: Image.network(
                                        //   courseMine.courseImage?.trim() ??
                                        //       "",
                                        //   height: 97,
                                        //   width: 110,
                                        //   fit: BoxFit.cover,
                                        //   errorBuilder:
                                        //       (context, error, stackTrace) {
                                        //         return Icon(
                                        //           Icons.broken_image,
                                        //           size: 100,
                                        //         );
                                        //       },
                                        // ),
                                        Gap(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              courseMine.courseName ?? "",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              courseMine.mentorName ?? "",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.play_circle),
                                                Text(
                                                  " ${courseMine.lessons ?? 0}",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Gap(3),
                                                Text(
                                                  "Videos",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(20),

              // for recent payments design
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    // height: 304,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => ReceiptPage());
                      },
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 30,
                                width: 525,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Recent Payments",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0,
                                      ),
                                    ),

                                    Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 17,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(20),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.myCourse.value.data.length,
                              itemBuilder: (context, index) {
                                var slip =
                                    receiptControl.receipt.value.data[index];
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 55,
                                        width: 55,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: Colors.blue.withAlpha(51),
                                        ),
                                        child: Icon(
                                          Icons.receipt,
                                          color: Colors.blue.shade800,
                                        ),
                                      ),
                                    ),
                                    Gap(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          slip.courseName ?? "",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Amount: Rs.${slip.amount}",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                          "Date: ${slip.enrolledDate}",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(20),

              // for certificates design
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    // height: 304,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => CertificatePageApi());
                      },
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 30,
                                width: 525,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Certificates",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0,
                                      ),
                                    ),

                                    Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 17,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Gap(20),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.myCourse.value.data.length,
                              itemBuilder: (context, index) {
                                var cert = certificateControl
                                    .certificate
                                    .value
                                    .data[index];
                                return Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 55,
                                        width: 55,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: Colors.purple.withAlpha(51),
                                        ),
                                        child: Icon(
                                          Icons.workspace_premium,
                                          color: Colors.purple.shade800,
                                        ),
                                      ),
                                    ),
                                    Gap(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cert.courseName ?? "",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Completed: ${cert.courseCompletionDate}",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),

      drawer: DrawerPage(),
    );
  }
}
