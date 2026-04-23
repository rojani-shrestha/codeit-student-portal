// import 'package:codeit_student_portal/model/register_model.dart';
// import 'package:codeit_student_portal/services/register_service.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// class RegisterContoller extends GetxController{ 
//   final namecontroller = TextEditingController();
//   final emailcontroller = TextEditingController();
//   final whatsappcontroller = TextEditingController();
//   final countrycodecontroller = TextEditingController(text: "+977");
//   final passwordcontroller = TextEditingController();
//   var isloading = false.obs;
//   Future <void>register()async{
//     isloading.value=true;
//     RegisterModel model = RegisterModel(
//       name: namecontroller.text,
//        email: emailcontroller.text,
//         whatsapp: whatsappcontroller.text,
//          password: passwordcontroller.text,
//           countryCode: countrycodecontroller.text,
//           );

//           final RegisterService service = RegisterService();
//           final response = await service.registeruser(model);
          

//   }


  
// }