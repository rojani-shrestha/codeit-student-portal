// // import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

// import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// class CreatepageView extends StatefulWidget {
//   const CreatepageView({super.key});

//   @override
//   State<CreatepageView> createState() => _createpageViewState();
// }

// class _createpageViewState extends State<CreatepageView> {
//   final controller = Get.put()
//   bool isclick = false;
//   bool ishidden = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Container(
//           height: 777.8,
//           width: 360.04,

//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("assets/image/Screenshot 2026-04-02 190631.png"),

//                 Text(
//                   "Create a student acccount",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                 Text("join Code IT student portal"),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Text("Full Name"),
//                     Text("*", style: TextStyle(color: Colors.red)),
//                   ],
//                 ),

//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Enter your full name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     Text("Email Address"),
//                     Text("*", style: TextStyle(color: Colors.red)),
//                   ],
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Enter your email address",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     Text("Whatsapp Number "),
//                     Text("*", style: TextStyle(color: Colors.red)),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Flexible(
//                       flex: 3,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           prefixIcon: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text("🇳🇵", style: TextStyle(fontSize: 20)),

//                               SizedBox(width: 2),
//                               Text("+977"),
//                               Icon(Icons.arrow_drop_down),
//                             ],
//                           ),

//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Flexible(
//                       flex: 8,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           labelText: "WhatsApp Number",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),

//                 Row(
//                   children: [
//                     Text("password"),
//                     Text("*", style: TextStyle(color: Colors.red)),
//                   ],
//                 ),

//                 TextField(
//                   obscureText: ishidden, // 👈 FIX: use variable here
//                   decoration: InputDecoration(
//                     labelText: "Enter your password",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),

//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           ishidden = !ishidden; // 👈 toggle
//                         });
//                       },
//                       icon: Icon(
//                         ishidden ? Icons.visibility_off : Icons.visibility,
//                       ),
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 SizedBox(
//                   height: 45,
//                   width: double.infinity,
//                   child: FilledButton(
//                     style: FilledButton.styleFrom(
//                       backgroundColor: Colors.deepOrange,
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Create Account",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Already have an account?"),
//                     SizedBox(width: 10),
//                     Text("Sign in", style: TextStyle(color: Colors.deepOrange)),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Text("© 2026 Code IT. All rights reserved. "),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
