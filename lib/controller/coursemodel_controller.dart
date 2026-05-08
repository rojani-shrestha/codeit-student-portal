import 'package:codeit_student_portal/model/course_model.dart';
import 'package:codeit_student_portal/services/coursemodel_service.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  var courseControl = CourseModel(success: false, courseDetails: null).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    getCourse(15388);
    super.onInit();
  }

  Future<void> getCourse(int enrollmentId) async {
    try {
      isLoading(true);
      var response = await MyCourseService.fetchCourses(
        enrollmentId,
      ); //service layer bata data fetch garxa

      if (response.statusCode == 200) {
        courseControl.value = CourseModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }
}
