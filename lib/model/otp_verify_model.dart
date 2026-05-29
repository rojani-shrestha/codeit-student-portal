class OtpVerifyModel {
    OtpVerifyModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory OtpVerifyModel.fromJson(Map<String, dynamic> json){ 
        return OtpVerifyModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
