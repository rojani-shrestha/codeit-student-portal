import 'package:codeit_student_portal/controller/my_courses_controller.dart';
import 'package:codeit_student_portal/view/class_video.dart';
//import 'package:codeit_student_portal/controller/my_courses_controller.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyCoursePage extends GetView<MyCoursesController> {
  const MyCoursePage({super.key});

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
                      onTap: () {},
                      child: Text("My Courses", style: TextStyle(fontSize: 15)),
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
                      "My Courses",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24),
              Column(
                children: [
                  ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.myCourse.value.data.length,
                    itemBuilder: (context, index) {
                      var courseMine = controller.myCourse.value.data[index];
                      return Column(
                        children: [
                          Container(
                            width: 390,
                            height: 191,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Colors.grey,
                            ),
                            // child: Image.network("${courseMine.courseImage}"),
                          ),
                          Material(
                            elevation: 4,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                              width: 390,
                              height: 200,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 165,
                                  width: 350,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${courseMine.courseName}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Gap(10),
                                      Row(
                                        children: [
                                          Icon(Icons.group),
                                          Gap(7),
                                          Text(
                                            "${courseMine.mentorName}",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      Gap(10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.play_circle, size: 20),
                                              Gap(7),
                                              Text(
                                                "${courseMine.lessons} Lesson",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.watch_later),
                                              Gap(7),
                                              Text("${courseMine.duration}"),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Gap(15),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white70,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      10,
                                                    ),
                                              ),
                                            ),
                                            onPressed: () {
                                              Get.to(() => ClassVideo());
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.play_circle,
                                                  size: 25,
                                                  color: Color(0xFFFF6900),
                                                ),
                                                Gap(5),
                                                Text(
                                                  "Watch Recorded Video",
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      }),
      drawer: DrawerPage(),
    );
  }
}
