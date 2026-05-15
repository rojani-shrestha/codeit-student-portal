// import 'package:codeit_student_portal/model/certificate_models.dart';
// import 'package:codeit_student_portal/model/register_model.dart';
// import 'package:codeit_student_portal/services/certificate_service.dart';
// import 'package:get/get.dart';

// class RegisterController extends GetxController {
//   var certificate = Auth()
//   var isLoading = false.obs;

//   Future getRegister() async {
//     try {
//       isLoading(true);
//       var response = await CertificateService.fetchCertificate();
//       if (response.statusCode == 200) {
//         certificate.value = CertificateModel.fromJson(response.data);
//       }
//     } finally {
//       isLoading(false);
//     }
//   }

//   @override
//   void onInit() {
//     super.onInit();
//     getCertificate();
//   }
// }
