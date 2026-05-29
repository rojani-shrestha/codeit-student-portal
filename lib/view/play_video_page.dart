// import 'package:codeit_student_portal/view/class_video.dart';
// import 'package:codeit_student_portal/view/dashboard_view.dart';
// import 'package:codeit_student_portal/view/my_course_page.dart';
// import 'package:codeit_student_portal/widgets/drawer_page.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class PlayVideoPage extends StatefulWidget {
//   const PlayVideoPage({super.key, required this.videoId, required this.title});
//   final String videoId;
//   final String title;

//   @override
//   State<PlayVideoPage> createState() => _PlayVideoPageState();
// }

// class _PlayVideoPageState extends State<PlayVideoPage> {
//   //var classControl = Get.find<CourseController>();
//   late YoutubePlayerController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = YoutubePlayerController(
//       initialVideoId:
//           YoutubePlayer.convertUrlToId(widget.videoId) ?? widget.videoId,
//       flags: YoutubePlayerFlags(autoPlay: true, mute: false),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 0,
//         title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 5,
//               right: 10,
//               bottom: 5,
//               left: 10,
//             ),
//             child: Container(
//               height: 30,
//               width: 87,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFF6900),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.person, color: Colors.white),
//                   Gap(5),
//                   Text("Name", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Get.to(() => DashboardView());
//                       },
//                       child: Row(
//                         children: const [
//                           Icon(Icons.home),
//                           Gap(3.5),
//                           Text("Home", style: TextStyle(fontSize: 15)),
//                         ],
//                       ),
//                     ),
//                     const Gap(7),
//                     const Text(">", style: TextStyle(fontSize: 20)),
//                     const Gap(7),
//                     GestureDetector(
//                       onTap: () {
//                         Get.to(() => MyCoursePage());
//                       },
//                       child: const Text(
//                         "My Courses",
//                         style: TextStyle(fontSize: 15),
//                       ),
//                     ),
//                     const Gap(7),
//                     const Text(">", style: TextStyle(fontSize: 20)),
//                     const Gap(7),

//                     GestureDetector(
//                       onTap: () {
//                         Get.to(() => ClassVideo());
//                       },
//                       child: const Text(
//                         "Video",
//                         style: TextStyle(
//                           fontSize: 15,
//                           // fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const Gap(7),
//                     const Text(">", style: TextStyle(fontSize: 20)),
//                     const Gap(7),

//                     const Text(
//                       "Play Video",
//                       style: TextStyle(
//                         fontSize: 15,
//                         // fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const Gap(30),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "My Course Video",
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Gap(10),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: AspectRatio(
//                     aspectRatio: 16 / 9,
//                     child: YoutubePlayer(
//                       controller: controller,
//                       showVideoProgressIndicator: true,
//                     ),
//                   ),
//                 ),
//               ),
//               const Gap(10),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Text(widget.title, textAlign: TextAlign.left),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: DrawerPage(),
//     );
//   }
// }
import 'package:codeit_student_portal/view/class_video.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/view/my_course_page.dart';
import 'package:codeit_student_portal/widgets/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideoPage extends StatefulWidget {
  const PlayVideoPage({super.key, required this.videoId, required this.title});

  final String videoId;
  final String title;

  @override
  State<PlayVideoPage> createState() => _PlayVideoPageState();
}

class _PlayVideoPageState extends State<PlayVideoPage> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId(widget.videoId) ?? widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
      ),

      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: Image.asset(
              "assets/image/codeit.png",
              height: 33,
              width: 137,
            ),
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
                    color: const Color(0xFFFF6900),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: const [
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),

                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => DashboardView());
                          },
                          child: Row(
                            children: const [
                              Icon(Icons.home),
                              Gap(3.5),
                              Text("Home", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),

                        const Gap(7),
                        const Text(">", style: TextStyle(fontSize: 20)),
                        const Gap(7),

                        GestureDetector(
                          onTap: () {
                            Get.to(() => MyCoursePage());
                          },
                          child: const Text(
                            "My Courses",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),

                        const Gap(7),
                        const Text(">", style: TextStyle(fontSize: 20)),
                        const Gap(7),

                        GestureDetector(
                          onTap: () {
                            Get.to(() => ClassVideo());
                          },
                          child: const Text(
                            "Video",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),

                        const Gap(7),
                        const Text(">", style: TextStyle(fontSize: 20)),
                        const Gap(7),

                        const Text(
                          "Play Video",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  const Gap(30),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "My Course Video",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Gap(10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: AspectRatio(aspectRatio: 16 / 9, child: player),
                    ),
                  ),

                  const Gap(10),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(widget.title, textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          drawer: DrawerPage(),
        );
      },
    );
  }
}
