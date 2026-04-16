class DownloadReceiptModel {
    DownloadReceiptModel({
        required this.success,
        required this.message,
    });

    final bool? success;
    final String? message;

    factory DownloadReceiptModel.fromJson(Map<String, dynamic> json){ 
        return DownloadReceiptModel(
            success: json["success"],
            message: json["message"],
        );
    }

}
