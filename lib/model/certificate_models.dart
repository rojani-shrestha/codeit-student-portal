class CertificateModel {
  CertificateModel({required this.success, required this.data});

  final bool? success;
  final List<Datum> data;

  factory CertificateModel.fromJson(Map<String, dynamic> json) {
    return CertificateModel(
      success: json["success"],
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }
}

class Datum {
  Datum({
    required this.certificateId,
    required this.courseName,
    required this.issuedTo,
    required this.courseCompletionDate,
    required this.downloadCertificate,
  });

  final int? certificateId;
  final String? courseName;
  final String? issuedTo;
  final String? courseCompletionDate;
  final String? downloadCertificate;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      certificateId: json["certificate_id"],
      courseName: json["course_name"],
      issuedTo: json["Issued to"],
      courseCompletionDate: json["course_completion_date"],
      downloadCertificate: json["download_certificate"],
    );
  }
}
