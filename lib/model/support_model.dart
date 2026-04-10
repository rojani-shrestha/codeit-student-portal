class SupportModel {
    SupportModel({
        required this.success,
        required this.data,
    });

    final bool? success;
    final List<dynamic> data;

    factory SupportModel.fromJson(Map<String, dynamic> json){ 
        return SupportModel(
            success: json["success"],
            data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
        );
    }

}
