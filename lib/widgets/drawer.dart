import 'package:codeit_student_portal/view/certificate_page_api.dart';
import 'package:codeit_student_portal/view/dashboard_view.dart';
import 'package:codeit_student_portal/view/login_view.dart';
import 'package:codeit_student_portal/view/receipt_page.dart';
import 'package:codeit_student_portal/view/suggestion_page.dart';
import 'package:codeit_student_portal/view/support_page.dart';
import 'package:codeit_student_portal/view/terms_condition_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange.shade400,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "</>",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Gap(10),
                    Text(
                      "CODE IT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text(
                    "Dashboard",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.to(DashboardView());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.workspace_premium, color: Colors.white),
                  title: Text(
                    "Certificate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.to(CertificatePageApi());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.receipt, color: Colors.white),
                  title: Text("Receipt", style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Get.to(ReceiptPage());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.headphones, color: Colors.white),
                  title: Text("Support", style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Get.to(SupportPage());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.feedback, color: Colors.white),
                  title: Text(
                    "Suggestions",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.to(SuggestionPage());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.description_sharp, color: Colors.white),
                  title: Text(
                    "Terms & Conditions",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Get.to(TermsConditionPage());
                  },
                ),
              ],
            ),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.logout_sharp, color: Colors.white),
            title: Text("Logout", style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.offAll(LoginView());
            },
          ),
        ],
      ),
    );
  }
}
