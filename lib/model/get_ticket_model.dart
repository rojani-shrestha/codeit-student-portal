class GetTicketModel {
    GetTicketModel({
        required this.success,
        required this.data,
    });

    final bool? success;
    final List<Datum> data;

    factory GetTicketModel.fromJson(Map<String, dynamic> json){ 
        return GetTicketModel(
            success: json["success"],
            data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        );
    }

}

class Datum {
    Datum({
        required this.category,
        required this.subject,
        required this.description,
        required this.status,
    });

    final String? category;
    final String? subject;
    final String? description;
    final String? status;

    factory Datum.fromJson(Map<String, dynamic> json){ 
        return Datum(
            category: json["category"],
            subject: json["subject"],
            description: json["description"],
            status: json["status"],
        );
    }

}
