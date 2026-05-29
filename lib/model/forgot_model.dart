class ForgotModel {
    ForgotModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory ForgotModel.fromJson(Map<String, dynamic> json){ 
        return ForgotModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
