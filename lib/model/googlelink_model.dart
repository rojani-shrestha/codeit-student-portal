class GoogleLinkModel {
    GoogleLinkModel({
        required this.success,
        required this.data,
    });

    final bool? success;
    final List<dynamic> data;

    factory GoogleLinkModel.fromJson(Map<String, dynamic> json){ 
        return GoogleLinkModel(
            success: json["success"],
            data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
        );
    }

}
