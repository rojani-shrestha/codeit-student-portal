import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class NotesService {
  static Future<Response> fetchNotes(int enrollmentId) async {
    var response = await DioConnector.dio.get(
      "course-notes/$enrollmentId",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 9574|FPmTLRN2TJ4lNpa3AG8dlsCm0YlJ4fwwsFXJsc9gcfecbff2",
        },
      ),
    );
   return response;
  }
}
