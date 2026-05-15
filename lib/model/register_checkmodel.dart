class RegisterCheckmodel {
    RegisterCheckmodel({
        required this.success,
        required this.token,
        required this.message,
    });

    final bool? success;
    final String? token;
    final String? message;

    factory RegisterCheckmodel.fromJson(Map<String, dynamic> json){ 
        return RegisterCheckmodel(
            success: json["success"],
            token: json["token"],
            message: json["message"],
        );
    }

}
