import 'package:codeit_student_portal/controller/coursemodel_controller.dart';
import 'package:codeit_student_portal/controller/notes_controller.dart';
//import 'package:codeit_student_portal/controller/notes_controller.dart';
//import 'package:codeit_student_portal/model/course_model.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/view/my_course_page.dart';
import 'package:codeit_student_portal/view/play_video_page.dart';
import 'package:codeit_student_portal/widgets/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ClassVideo extends StatefulWidget {
  const ClassVideo({super.key});

  @override
  State<ClassVideo> createState() => _ClassVideoState();
}

class _ClassVideoState extends State<ClassVideo> {
  bool showVideos = false;
  bool isClick = false;
  var classControl = Get.find<CourseController>();
  bool showCourse = false;
  bool isPress = false;
  var notesControl = Get.find<NotesController>();
  bool showNotes = false;
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    notesControl.getNotes(
      classControl.courseControl.value.courseDetails?.enrollmentId ?? 0,
    );
  }

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
        if (classControl.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => DashboardView());
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
                            Get.to(() => MyCoursePage());
                          },
                          child: Text(
                            "My Courses",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Gap(7),
                        Text(">", style: TextStyle(fontSize: 20)),
                        Gap(7),

                        Text(
                          "Video",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
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
                          "My Courses",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 233,
                    //width: 393,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/image/flutter.jpg"),
                  ),

                  // for course curriculum
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showCourse = !showCourse;
                            isPress = showCourse;
                          });
                        },
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.menu_book, color: Colors.black),
                                    Gap(5),
                                    Text(
                                      "Course Curriculum",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      showCourse
                                          ? Icons.keyboard_arrow_down
                                          : Icons.arrow_forward_ios_rounded,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(5),
                  if (showCourse)
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 550,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.menu_book,
                                      color: Color(0xFFFF6900),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Course Curriculum",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [Icon(Icons.keyboard_arrow_down)],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  Gap(10),
                  //for notes & resources
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showNotes = !showNotes;
                            isShow = showNotes;
                          });
                        },
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.description),
                                    Gap(5),
                                    Text(
                                      "Notes & Resources",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      showNotes
                                          ? Icons.keyboard_arrow_down_outlined
                                          : Icons.arrow_forward_ios_rounded,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (showNotes)
                    Column(
                      children: [
                        Card(
                          elevation: 4,
                          child: Container(
                            //height: 40,
                            width: 550,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.description,
                                            color: Color(0xffff6900),
                                          ),
                                          Gap(5),
                                          Text(
                                            "Notes & Resources",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Center(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFD0D0D0),
                                        child: Icon(
                                          Icons.description,
                                          // color: Color(0xFFD0D0D0),
                                        ),
                                      ),
                                      Text(
                                        "No notes & resources \n yet",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Gap(5),
                                      Text(
                                        "Your mentor will upload \n important notes, PDFs, links,\n and other study materials here \nif available.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black.withAlpha(112),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // notesControl.isLoading.value
                                //     ? const Center(
                                //         child: CircularProgressIndicator(),
                                //       )
                                //     : ListView.builder(
                                //         shrinkWrap: true,
                                //         physics: NeverScrollableScrollPhysics(),
                                //         itemCount: notesControl
                                //             .resources
                                //             .value
                                //             .notes
                                //             .length,
                                //         itemBuilder: (context, index) {
                                //           var note = notesControl
                                //               .resources
                                //               .value
                                //               .notes[index];
                                //           return ListTile(
                                //             leading: Icon(
                                //               Icons.description,
                                //               color: Color(0xFFFF6900),
                                //             ),
                                //             title: Text(
                                //               note["title"].toString(),
                                //             ),
                                //             //subtitle: Text(note["description"] ?? ""),
                                //           );
                                //         },
                                //       ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  Gap(20),
                  //for class video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.videocam,
                                      size: 24,
                                      color: Color(0xFFFF6900),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Class Videos",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          showVideos = !showVideos;
                                          isClick = showVideos;
                                        });
                                      },
                                      child: Container(
                                        height: 26,
                                        width: 71,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            style: BorderStyle.solid,
                                            color: Colors.black.withAlpha(178),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 10,
                                              ),
                                              child: Text(
                                                "asc",
                                                style: TextStyle(
                                                  color: Colors.black.withAlpha(
                                                    178,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Gap(8),
                                            Icon(
                                              showVideos
                                                  ? Icons.arrow_drop_down
                                                  : Icons.arrow_right_sharp,
                                            ),
                                          ],
                                        ),
                                      ),
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
                  if (showVideos)
                    Column(
                      children: [
                        if (classControl
                                .courseControl
                                .value
                                .courseDetails
                                ?.videos
                                .isEmpty ??
                            true)
                          const Text("No videos found"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                                classControl
                                    .courseControl
                                    .value
                                    .courseDetails
                                    ?.videos
                                    .length ??
                                0,
                            itemBuilder: (context, index) {
                              var video = classControl
                                  .courseControl
                                  .value
                                  .courseDetails
                                  ?.videos;
                              var videos = video?[index];
                              return InkWell(
                                onTap: () {
                                  Get.to(
                                    () => PlayVideoPage(
                                      videoId: videos?.videoId ?? "",
                                      title: videos?.title ?? "",
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 102,
                                  width: 390,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Colors.black.withAlpha(175),
                                      ),
                                      // bottom: BorderSide(
                                      //   color: Colors.black.withAlpha(102),
                                      // ),
                                    ),
                                  ),
                                  child: Center(
                                    child: ListTile(
                                      leading: Container(
                                        height: 82,
                                        width: 82,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD9D9D9),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Icon(Icons.play_circle),
                                      ),
                                      title: Text(videos?.title ?? ""),
                                      subtitle: Row(
                                        children: [
                                          Icon(Icons.calendar_month_outlined),
                                          Gap(5),
                                          Text(videos?.posted ?? ""),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        );
      }),
      drawer: DrawerPage(),
    );
  }
}
