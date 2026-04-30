import 'package:codeit_student_portal/bindings/cert_controller_bindings.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white)),
      initialBinding: CertControllerBindings(),
      home: LoginView(),
      //home: DashboardView(),
    );
  }
}
