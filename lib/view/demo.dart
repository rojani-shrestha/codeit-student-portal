// import 'package:codeit_student_portal/controller/profile_controller.dart';
// import 'package:codeit_student_portal/controller/update_profile_controller.dart';
// import 'package:codeit_student_portal/widgets/drawer_page.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';

// class ProfilePage extends StatelessWidget {
//   ProfilePage({super.key});

//   final profileControl = Get.find<ProfileController>();
//   final nameControl = TextEditingController();
//   final emailControl = TextEditingController();
//   final numberControl = TextEditingController();
//   final updateControl = Get.find<UpdateProfileController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Image.asset("assets/image/codeit.png", height: 33, width: 137),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 5,
//               right: 10,
//               bottom: 5,
//               left: 10,
//             ),
//             child: Container(
//               height: 30,
//               width: 87,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFF6900),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.person, color: Colors.white),
//                   Gap(5),
//                   Text("Name", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),

//       body: Obx(() {
//         if (profileControl.isLoading.value) {
//           return const Center(child: CircularProgressIndicator());
//         }

//         return SingleChildScrollView(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Card(
//                 elevation: 4,
//                 child: Column(
//                   children: [
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: CircleAvatar(
//                           radius: 30,
//                           backgroundColor: Color(0xFFFF6900),

//                           child: Text(
//                             "A",
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Gap(10),
//                     Text(profileControl.profile.value.user?.name ?? ""),
//                     Text(profileControl.profile.value.user?.email ?? ""),
//                     Text(profileControl.profile.value.user?.phone ?? ""),
//                   ],
//                 ),
//               ),
//               Gap(10),
//               Card(
//                 elevation: 4,
//                 child: Column(
//                   children: [
//                     Text(
//                       "Update Your Profile",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       "Keep your current information",
//                       style: TextStyle(fontSize: 14),
//                     ),
//                     Gap(10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [Text("Full Name")],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextField(
//                         controller: nameControl,
//                         decoration: InputDecoration(
//                           labelText: "Enter your full name",
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     Gap(10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [Text("Email Address")],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextField(
//                         controller: emailControl,
//                         decoration: InputDecoration(
//                           labelText: "Enter your email",
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                     Gap(10),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [Text("Phone Number")],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Flexible(
//                             flex: 2,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 hintText: "NP",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                           ),
//                           Flexible(
//                             flex: 8,
//                             child: TextField(
//                               controller: numberControl,
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                 labelText: "WhatsApp number",
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xFFFF6900),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () async {
//                           await updateControl.updateUser(
//                             nameControl.text.trim(),
//                             emailControl.text.trim(),
//                             numberControl.text.trim(),
//                             profileControl.profile.value.token ?? "",
//                           );
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.save, color: Colors.white),
//                             Gap(5),
//                             Text(
//                               "Save Changes",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//       drawer: DrawerPage(),
//     );
//   }
// }
