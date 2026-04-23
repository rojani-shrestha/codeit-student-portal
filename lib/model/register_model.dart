class RegisterModel {
    RegisterModel({
        required this.name,
        required this.email,
        required this.whatsapp,
        required this.password,
        required this.countryCode,
    });

    final String? name;
    final String? email;
    final String? whatsapp;
    final String? password;
    final String? countryCode;

    factory RegisterModel.fromJson(Map<String, dynamic> json){ 
        return RegisterModel(
            name: json["name"],
            email: json["email"],
            whatsapp: json["whatsapp"],
            password: json["password"],
            countryCode: json["country_code"],
        );
    }

}
