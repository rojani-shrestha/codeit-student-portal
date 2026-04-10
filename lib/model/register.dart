class Auth {
  String? name;
  String? email;
  String? whatsapp;
  String? password;
  String? countryCode;

  Auth({this.name, this.email, this.whatsapp, this.password, this.countryCode});

  Auth.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    whatsapp = json['whatsapp'];
    password = json['password'];
    countryCode = json['country_code'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['whatsapp'] = this.whatsapp;
    data['password'] = this.password;
    data['country_code'] = this.countryCode;
    return data;
  }
}
//hdkjashfkas