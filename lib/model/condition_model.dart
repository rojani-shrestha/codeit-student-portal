class ConditionModel {
    ConditionModel({
        required this.sucess,
        required this.data,
    });

    final bool? sucess;
    final String? data;

    factory ConditionModel.fromJson(Map<String, dynamic> json){ 
        return ConditionModel(
            sucess: json["sucess"],
            data: json["data"],
        );
    }

}
