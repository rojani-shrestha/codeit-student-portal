import 'package:codeit_student_portal/controller/forgot_controller.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:codeit_student_portal/view/otp_view.dart';
//import 'package:codeit_student_portal/view/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  var forgotControl = Get.find<ForgotController>();
  final emailControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        if (forgotControl.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return Center(
          child: Container(
            height: 777.8,
            width: 360.04,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),

                  Text(
                    "Password recovery",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text("Enter your email to recover your password "),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text("Enter your  registered email address"),
                      Text("*", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  SizedBox(height: 5),

                  TextField(
                    controller: emailControl,
                    decoration: InputDecoration(
                      labelText: "Enter your email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
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
                        if (emailControl.text.trim().isEmpty) {
                          Get.snackbar("Error", "Please enter email");
                          return;
                        }
                        await forgotControl.getForgot(emailControl.text.trim());
                        if (forgotControl.forgot.value.success == true) {
                          Get.to(
                            () => OtpView(email: emailControl.text.trim()),
                          );
                        }
                      },
                      child: Text(
                        "Send OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(() => LoginView());
                    },
                    child: Text("Back to Login"),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
