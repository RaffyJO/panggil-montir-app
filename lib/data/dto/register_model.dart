class RegisterModel {
  final String? name;
  final String? email;
  final String? password;
  final String? phone;
  final String? photo;

  RegisterModel({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.photo,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'photo': photo ?? '',
    };
  }

  RegisterModel copyWith({
    String? name,
    String? email,
    String? password,
    String? phone,
    String? photo,
  }) {
    return RegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      photo: photo ?? this.photo,
    );
  }
}
