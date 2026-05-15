import 'package:codeit_student_portal/model/notes_model.dart';
import 'package:codeit_student_portal/services/notes_service.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  var notes = NotesModel(sucess: false, notes: []).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    getNotes(0);
    super.onInit();
  }

  Future<void> getNotes(int enrollmentId) async {
    try {
      isLoading(true);
      var response = await NotesService.fetchNotes(enrollmentId);

      if (response.statusCode == 200) {
        notes.value = NotesModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }
}
