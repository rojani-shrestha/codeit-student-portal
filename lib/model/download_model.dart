class DownloadModel {
    DownloadModel({
        required this.sucess,
        required this.message,
    });

    final bool? sucess;
    final String? message;

    factory DownloadModel.fromJson(Map<String, dynamic> json){ 
        return DownloadModel(
            sucess: json["sucess"],
            message: json["message"],
        );
    }

}
