class PostTicketModel {
    PostTicketModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory PostTicketModel.fromJson(Map<String, dynamic> json){ 
        return PostTicketModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
