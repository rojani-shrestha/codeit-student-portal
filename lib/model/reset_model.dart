class ResetModel {
    ResetModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory ResetModel.fromJson(Map<String, dynamic> json){ 
        return ResetModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
