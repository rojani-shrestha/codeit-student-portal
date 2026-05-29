import 'package:codeit_student_portal/controller/register_controller.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isclick = false;
  bool ishidden = true;
  var registerControl = Get.find<RegisterController>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final countryController = TextEditingController();
  final numberController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    countryController.dispose();
    numberController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Obx(() {
        if (registerControl.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 4,
              child: SizedBox(
                //height: 777.8,
                width: 380,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/Screenshot 2026-04-02 190631.png",
                      ),

                      Text(
                        "Create a student acccount",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text("Join Code IT student portal"),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Full Name"),
                            Text("*", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: nameController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: "Enter your full name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Email Address"),
                            Text("*", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: "Enter your email address",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Whatsapp Number "),
                            Text("*", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 3,
                              child: TextField(
                                controller: countryController,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  prefixIcon: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "🇳🇵",
                                        style: TextStyle(fontSize: 20),
                                      ),

                                      SizedBox(width: 2),
                                      Text("+977"),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Flexible(
                              flex: 8,
                              child: TextField(
                                controller: numberController,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  labelText: "WhatsApp Number",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Password"),
                            Text("*", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: passController,
                          textInputAction: TextInputAction.next,
                          obscuringCharacter: "*",
                          obscureText: ishidden,
                          decoration: InputDecoration(
                            labelText: "Enter your password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),

                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  ishidden = !ishidden; // toggle
                                });
                              },
                              icon: Icon(
                                ishidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                            ),
                            onPressed: () async {
                              if (nameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  numberController.text.isEmpty ||
                                  passController.text.isEmpty) {
                                Get.snackbar(
                                  "Error",
                                  "Please fill all fields",
                                  backgroundColor: Colors.red,
                                  colorText: Colors.white,
                                );
                                return;
                              }
                              await registerControl.fetchRegister(
                                nameController.text.trim(),
                                emailController.text.trim(),
                                numberController.text.trim(),
                                passController.text.trim(),
                                countryController.text.trim(),
                              );
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          SizedBox(width: 10),

                          GestureDetector(
                            onTap: () {
                              Get.to(() => LoginView());
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("© 2026 Code IT. All rights reserved. "),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
