// import 'dart:convert';

// import 'package:codeit_student_portal/model/register_checkmodel.dart';
// import 'package:codeit_student_portal/model/register_model.dart';
// // import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

// class RegisterService {
//   final String baseurl = "https://codeit.com.np/api";
//   Future<RegisterCheckmodel?> registeruser(RegisterModel model)async{
//     try{
//       final response = await http.post(
//         Uri.parse("$baseurl/register"),
//         headers: {"Content-Type":"application/json"},
//         body:jsonEncode({
          
//    "name" : model.name,
//    "email": model.email,
//    "whatsapp": model.whatsapp,
//    "password": model.password,
//    "country_code": model.countryCode,

//         }),

//       );
      
//     }
//     catch(e){}
//   }

// }