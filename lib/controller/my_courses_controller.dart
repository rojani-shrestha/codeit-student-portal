import 'package:codeit_student_portal/model/my_course_model.dart';
import 'package:codeit_student_portal/services/course_service.dart';
import 'package:get/get.dart';

class MyCoursesController extends GetxController {
  var myCourse = MyCourseModel(success: false, data: []).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    getCourses();
    super.onInit();
  }

  Future<void> getCourses() async {
    try {
      isLoading(true);
      var response = await CourseService.fetchCourse(15388);
      if (response.statusCode == 200) {
        myCourse.value = MyCourseModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }
}
