import 'package:codeit_student_portal/controller/profile_controller.dart';
import 'package:codeit_student_portal/controller/update_profile_controller.dart';
import 'package:codeit_student_portal/widgets/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final profileControl = Get.find<ProfileController>();
  final nameControl = TextEditingController();
  final emailControl = TextEditingController();
  final numberControl = TextEditingController();
  final addressControl = TextEditingController();
  final updateControl = Get.find<UpdateProfileController>();

  // Pre-fill fields from existing profile data
  void _initFields() {
    final user = profileControl.profile.value.user;
    if (nameControl.text.isEmpty) {
      nameControl.text = user?.name ?? "";
    }
    if (emailControl.text.isEmpty) {
      emailControl.text = user?.email ?? "";
    }
    if (numberControl.text.isEmpty) {
      numberControl.text = user?.phone ?? "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
        centerTitle: true,
        actions: [
          Obx(() {
            // Fix 1: Real name in AppBar, not hardcoded "Name"
            final name = profileControl.profile.value.user?.name ?? "";
            //final initial = name.isNotEmpty ? name[0].toUpperCase() : "?";
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6900),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person, color: Colors.white),
                    const Gap(5),
                    Text(
                      name.isNotEmpty ? name.split(" ").first : "Profile",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),

      body: Obx(() {
        if (profileControl.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        _initFields();

        final user = profileControl.profile.value.user;
        final name = user?.name ?? "";
        final initial = name.isNotEmpty ? name[0].toUpperCase() : "?";

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Profile Display Card
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xFFFF6900),

                          child: Text(
                            initial,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Text(name),
                        Text(user?.email ?? ""),
                        Text(user?.phone ?? ""),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),

              // Update Form Card
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Update Your Profile",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Keep your current information",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      const Gap(10),

                      const Text("Full Name"),
                      const Gap(6),
                      TextField(
                        controller: nameControl,
                        decoration: const InputDecoration(
                          labelText: "Enter your full name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const Gap(10),

                      const Text("Email Address"),
                      const Gap(6),
                      TextField(
                        controller: emailControl,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Enter your email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const Gap(10),

                      const Text("Phone Number"),
                      const Gap(6),
                      Row(
                        children: [
                          // Fix 4: NP prefix is just a label, not a separate field
                          Container(
                            height: 56,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            alignment: Alignment.center,
                            child: const Text("NP"),
                          ),
                          const Gap(8),
                          Expanded(
                            child: TextField(
                              controller: numberControl,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                labelText: "WhatsApp number",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Address"),
                      const Gap(6),
                      TextField(
                        controller: addressControl,
                        decoration: const InputDecoration(
                          labelText: "Enter your address",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const Gap(16),

                      // Fix 5: Disable button while updating
                      Obx(
                        () => SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF6900),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: updateControl.isLoading.value
                                ? null
                                : () async {
                                    await updateControl.updateUser(
                                      nameControl.text.trim(),
                                      emailControl.text.trim(),
                                      numberControl.text.trim(),
                                      addressControl.text.trim(),
                                    );
                                  },
                            child: updateControl.isLoading.value
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.save, color: Colors.white),
                                      Gap(5),
                                      Text(
                                        "Save Changes",
                                        style: TextStyle(color: Colors.white),
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
            ],
          ),
        );
      }),
      drawer: const DrawerPage(),
    );
  }
}
