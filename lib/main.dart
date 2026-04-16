import 'package:codeit_student_portal/bindings/cert_controller_bindings.dart';
//import 'package:codeit_student_portal/view/support_page.dart';
//import 'package:codeit_student_portal/view/certificate_page_api.dart';
import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white)),
      initialBinding: CertControllerBindings(),
      //home: CertificatePageApi(),
      //home: SupportPage(),
      home: ReceiptPage(),
    );
  }
}
