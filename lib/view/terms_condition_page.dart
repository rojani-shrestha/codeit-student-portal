import 'package:codeit_student_portal/controller/condition_controller.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TermsConditionPage extends GetView<ConditionController> {
  const TermsConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    //var term = Get.find<ConditionController>();
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
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() =>DashboardView());
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
                              "Terms & Conditions",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            //Text(controller.termController.value.data.toString()),
                            Html(data: controller.termController.value.data),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
      drawer: DrawerPage(),
    );
  }
}
