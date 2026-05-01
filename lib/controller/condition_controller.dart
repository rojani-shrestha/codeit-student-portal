import 'package:codeit_student_portal/model/condition_model.dart';
import 'package:codeit_student_portal/services/condition_service.dart';
import 'package:get/get.dart';

class ConditionController extends GetxController {
  var termController = ConditionModel(sucess: false, data: "").obs; // response chai model ma convert hunxa i.e. api json -> dart object ma convert hunxa
  var isLoading = false.obs; 

  @override
  void onInit() {
    fetchCondition();
    super.onInit();
  }

  Future<void> fetchCondition() async {
    try {
      isLoading(true);
      var result = await ConditionService.fetchTerms(); //api lai call garxa
      //conditionservice class le api lai handle garxa ani data lyauxa
      if (result.sucess == true) {
        termController.value = result; // tespaxi controller ma store garinxa reactive variable
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
