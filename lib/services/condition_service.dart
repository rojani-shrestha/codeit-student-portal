import 'package:codeit_student_portal/model/condition_model.dart';
import 'package:codeit_student_portal/utils/dio_connector.dart';
import 'package:dio/dio.dart';

class ConditionService {
  static Future<ConditionModel> fetchTerms() async {
    var response = await DioConnector.dio.get( 
      "terms",
      options: Options(
        headers: {
          "Authorization":
              "Bearer 8245|uP40MWPdrPSsIxHK6pGRYyheRHkQKAFF2oCnxyEKd56e0cc4",
        },
      ),
    );
    return ConditionModel.fromJson(response.data);
  }
}
