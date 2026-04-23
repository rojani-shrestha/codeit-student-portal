// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:studentportalgb/controller/register_controller.dart';

// class RegisterPage extends GetView<registercontroller> {
//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final controller = Get.put(RegisterController());

//   bool isclick = false;

//   bool ishidden = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Register")),
//       body: Obx(() {
//         return controller.isLoading.value
//             ? Center(child: CircularProgressIndicator())
//             : Padding(
//           padding: const EdgeInsets.all(16.0),

//           child : SingleChildScrollView(
//             child: Center(
//               child: Container(
//                 height: 777.8,
//                 width: 360.04,
            
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset("assets/images/logo_codeit.jpeg"),
            
//                       Text(
//                         "Create a student acccount",
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
            
//                       Text("join Code IT student portal"),
//                       SizedBox(height: 20),
//                       Row(
//                         children: [
//                           Text("Full Name"),
//                           Text("*", style: TextStyle(color: Colors.red)),
//                         ],
//                       ),
            
//                       TextField(
//                         controller: controller.nameController,
//                         decoration: InputDecoration(
//                           floatingLabelBehavior: FloatingLabelBehavior.never,
//                           labelText: "Enter your full name",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         children: [
//                           Text("Email Address"),
//                           Text("*", style: TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                       TextField(
//                         controller: controller.emailController,
//                         decoration: InputDecoration(
//                           floatingLabelBehavior: FloatingLabelBehavior.never,
//                           labelText: "Enter your email address",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                         ),
//                       ),
            
//                       SizedBox(height: 10),
//                       Row(
//                         children: [
//                           Text("Whatsapp Number "),
//                           Text("*", style: TextStyle(color: Colors.red)),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Flexible(
//                             flex: 3,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 prefixIcon: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text("🇳🇵", style: TextStyle(fontSize: 20)),
            
//                                     SizedBox(width: 2),
//                                     Text("+977"),
//                                     Icon(Icons.arrow_drop_down),
//                                   ],
//                                 ),
            
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(14),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 5),
//                           Flexible(
//                             flex: 8,
//                             child: TextField(
//                               controller: controller.whatsappController,
//                               decoration: InputDecoration(
//                                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                                 labelText: "WhatsApp Number",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(14),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10),
            
//                       Row(
//                         children: [
//                           Text("password"),
//                           Text("*", style: TextStyle(color: Colors.red)),
//                         ],
//                       ),
            
//                       TextField(
//                         controller: controller.passwordController,
//                         obscureText: ishidden, // 👈 FIX: use variable here
//                         decoration: InputDecoration(
//                           floatingLabelBehavior: FloatingLabelBehavior.never,
//                           labelText: "Enter your password",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(14),
//                           ),
            
//                           suffixIcon: IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 ishidden = !ishidden; // 👈 toggle
//                               });
//                             },
//                             icon: Icon(
//                               ishidden ? Icons.visibility_off : Icons.visibility,
//                             ),
//                           ),
//                         ),
//                       ),
            
//                       SizedBox(height: 20),
            
//                       SizedBox(
//                         height: 45,
//                         width: double.infinity,
//                         child: FilledButton(
//                           style: FilledButton.styleFrom(
//                             backgroundColor: Colors.deepOrange,
//                           ),
//                           onPressed: () => controller.register(),
//                           child: Text(
//                             "Create Account",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Already have an account?"),
//                           SizedBox(width: 10),
//                           Text("Sign in", style: TextStyle(color: Colors.deepOrange)),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Text("© 2026 Code IT. All rights reserved. "),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // child: Column(
//           //   children: [
//           //     TextField(controller: controller.nameController, decoration: InputDecoration(labelText: "Name")),
//           //     TextField(controller: controller.emailController, decoration: InputDecoration(labelText: "Email")),
//           //     TextField(controller: controller.whatsappController, decoration: InputDecoration(labelText: "Whatsapp")),
//           //     TextField(controller: controller.passwordController, decoration: InputDecoration(labelText: "Password")),
//           //     TextField(controller: controller.countryCodeController, decoration: InputDecoration(labelText: "Country Code")),
//           //
//           //     SizedBox(height: 20),
//           //
//           //     ElevatedButton(
//           //       onPressed: () => controller.register(),
//           //       child: Text("Register"),
//           //     )
//           //   ],
//           // ),
//         );
//       }),
//     );
//   }
// }