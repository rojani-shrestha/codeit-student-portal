import 'package:codeit_student_portal/controller/login_controller.dart';
import 'package:codeit_student_portal/view/forgot_view.dart';
import 'package:codeit_student_portal/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var loginControl = Get.find<LoginController>();
  final emailControl = TextEditingController();
  final passControl = TextEditingController();
  bool isclick = false;
  bool isHidden = true;

  @override
  void dispose() {
    emailControl.dispose();
    passControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Obx(() {
        if (loginControl.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/Screenshot 2026-04-02 190631.png",
                      ),
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sign in to your student portal",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Email address"),
                          Gap(1),
                          Text("*", style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    //SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: emailControl,
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
                          Text("Password"),
                          Gap(1),
                          Text("*", style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    // SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: passControl,
                        textInputAction: TextInputAction.next,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },
                            icon: Icon(
                              isHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          labelText: "Enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        obscureText: isHidden,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isclick,
                              onChanged: (bool? value) {
                                setState(() {
                                  isclick = value!;
                                });
                              },
                            ),
                            Text("Remember me"),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return ForgotView();
                                },
                              ),
                            );
                          },

                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),

                          onPressed: () async {
                            //Get.to(() => DashboardView());
                            await loginControl.fetchLogin(
                              emailControl.text.trim(),
                              passControl.text.trim(),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Don't have an account yet?"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return RegisterView();
                                },
                              ),
                            );
                          },

                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 14,
                            ),
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
        );
      }),
    );
  }
}
