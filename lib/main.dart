
import 'package:codeit_student_portal/bindings/cert_controller_bindings.dart';
import 'package:codeit_student_portal/view/login_view.dart';
//import 'package:codeit_student_portal/view/support_page.dart';
//import 'package:codeit_student_portal/view/certificate_page_api.dart';

import 'package:flutter/material.dart';



import 'package:get/get.dart';
// >>>>>>> a90ca2e9cf3ea01e3a6cf6f99a61391bb665a7d5

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//     return  GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: LoginView(),
      
//     );
//   }
// }

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.white)),
      initialBinding: CertControllerBindings(),

      // home: CertificatePageApi(),
      // home: SupportPage(),
      // home: CreatepageView(),
      // home: ReceiptDetailsPage()
      home: LoginView(),
      // home: OtpView(),
      // home: passchange()
      //home: CertificatePageApi(),
      //home: SupportPage(),
      // home: ReceiptPage(),
    );
  }
}
