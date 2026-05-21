class DownloadModel {
    DownloadModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory DownloadModel.fromJson(Map<String, dynamic> json){ 
        return DownloadModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
