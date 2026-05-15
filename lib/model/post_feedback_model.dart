class PostFeedbackModel {
    PostFeedbackModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory PostFeedbackModel.fromJson(Map<String, dynamic> json){ 
        return PostFeedbackModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
