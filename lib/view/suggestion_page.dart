import 'package:codeit_student_portal/controller/post_feedback_controller.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SuggestionPage extends StatefulWidget {
  const SuggestionPage({super.key});

  @override
  State<SuggestionPage> createState() => _SuggestionPageState();
}

class _SuggestionPageState extends State<SuggestionPage> {
  final message = TextEditingController();

  @override
  void dispose() {
    message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var postController = Get.find<PostFeedbackController>();

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
        return Stack(
          children: [
            SingleChildScrollView(
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
                          onTap: () {},
                          child: Text(
                            "Suggestions",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(30),
                  Text(
                    "Suggestions",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Gap(30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 390,
                      height: 383,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            Text(
                              "Help Us Improve Our Online Class",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Do you have any suggestions for improving",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "our online classes?",
                              style: TextStyle(fontSize: 16),
                            ),
                            Gap(20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.message, color: Color(0xFFFF6900)),
                                  Gap(5),
                                  Text(
                                    "Your Suggestion",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: message,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  hintText: "We'd love to hear your ideas...",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Gap(20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color(0xFFFF6900),
                                ),

                                onPressed: postController.isLoading.value
                                    ? null
                                    : () async {
                                        if (message.text.trim().isEmpty) {
                                          Get.snackbar(
                                            "Error",
                                            "Please write a suggestion",
                                          );
                                          return;
                                        }

                                        await postController.postFeedback(
                                          message.text.trim(),
                                        );

                                        message.clear();
                                      },

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.send, color: Colors.white),
                                    Gap(5),
                                    Text(
                                      "Send Feedback",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
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

            if (postController.isLoading.value)
              Container(
                color: Colors.black26,
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        );
      }),

      drawer: DrawerPage(),
    );
  }
}
