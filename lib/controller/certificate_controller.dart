import 'package:codeit_student_portal/model/certificate_model.dart';
import 'package:get/get.dart';

class CertificateController extends GetxController {
  var isCertificateSelected = true.obs;

  var certificates = <CertificateModel>[
    CertificateModel(
      title: "Web Design",
      date: "Oct 4, 2025",
      id: "CERT-2025-001",
    ),

    CertificateModel(
      title: "Flutter",
      date: "Dec 18, 2025",
      id: "CERT-2025-002",
    ),

    CertificateModel(
      title: "Adobe InDesign",
      date: "Aug 01, 2025",
      id: "CERT-2025-003",
    ),

    CertificateModel(
      title: "Python for Beginners",
      date: "Sep 15, 2025",
      id: "CERT-2025-004",
    ),
  ].obs;

  var receipt = <ReceiptModel>[
    ReceiptModel(
      rname: "Flutter Development Complete",
      rdate: "March 10,2026",
      rid: "TXN-2026-045",
      pay: "Rs. 15,000",
      status: "Completed",
    ),
    ReceiptModel(
      rname: "Web Design Fundamentals",
      rdate: "February 28,2026",
      rid: "TXN-2026-036",
      pay: "Rs. 12,000",
      status: "Completed",
    ),
    ReceiptModel(
      rname: "React & TypeScript Masterclass",
      rdate: "February 15,2026",
      rid: "TXN-2026-038",
      pay: "Rs. 18,000",
      status: "Completed",
    ),
    ReceiptModel(
      rname: "Adobe InDesign",
      rdate: "February 5,2026",
      rid: "TXN-2026-021",
      pay: "Rs. 10,000",
      status: "Completed",
    ),
  ].obs;

  void toggleTab(bool value) {
    isCertificateSelected.value = value;
  }
}
