class NotesModel {
    NotesModel({
        required this.sucess,
        required this.notes,
    });

    final bool? sucess;
    final List<dynamic> notes;

    factory NotesModel.fromJson(Map<String, dynamic> json){ 
        return NotesModel(
            sucess: json["sucess"],
            notes: json["Notes"] == null ? [] : List<dynamic>.from(json["Notes"]!.map((x) => x)),
        );
    }

}
