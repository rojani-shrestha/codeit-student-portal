import 'package:codeit_student_portal/controller/reset_controller.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetView extends StatefulWidget {
  final String email;
  final String otp;
  const ResetView({super.key, required this.email, required this.otp});

  @override
  State<ResetView> createState() => _ResetViewState();
}

class _ResetViewState extends State<ResetView> {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  var resetControl = Get.find<ResetController>();
  bool ishidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/Screenshot 2026-04-02 190631.png",
                      ),
                    ),

                    Center(
                      child: Text(
                        "Reset your password",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Center(child: Text("Please enter your new password")),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Text("New password"),
                        Text("*", style: TextStyle(color: Colors.red)),
                      ],
                    ),

                    SizedBox(height: 5),

                    TextField(
                      controller: password,
                      obscureText: ishidden,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ishidden = !ishidden;
                            });
                          },
                          icon: Icon(
                            ishidden ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),

                    // SizedBox(height: 10),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text("Confirm password"),
                        Text("*", style: TextStyle(color: Colors.red)),
                      ],
                    ),

                    // SizedBox(height: 5),
                    SizedBox(height: 10),

                    TextField(
                      controller: confirmPassword,
                      obscureText: ishidden,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ishidden = !ishidden;
                            });
                          },
                          icon: Icon(
                            ishidden ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Text("Your password must contain"),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.deepOrange),
                        Text("At least 6 character"),
                      ],
                    ),

                    SizedBox(height: 30),

                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                        ),
                        onPressed: () async {
                          if (password.text.isEmpty ||
                              confirmPassword.text.isEmpty) {
                            Get.snackbar("Error", "Fill all fields");
                            return;
                          }

                          if (password.text != confirmPassword.text) {
                            Get.snackbar("Error", "Password does not match");
                            return;
                          }

                          if (password.text.length < 6) {
                            Get.snackbar(
                              "Error",
                              "Minimum 6 characters required",
                            );
                            return;
                          }
                          await resetControl.resetPass(
                            widget.email,
                            widget.otp,
                            password.text.trim(),
                          );
                          if (resetControl.reset.value.success == true) {
                            Get.snackbar(
                              "Success",
                              "Password reset successful",
                            );

                            Get.offAll(() => LoginView());
                          } else {
                            Get.snackbar(
                              "Error",
                              resetControl.reset.value.message ?? "Failed",
                            );
                          }
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
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
      ),
    );
  }
}
