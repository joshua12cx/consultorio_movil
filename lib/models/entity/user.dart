class User {
  final int idUser;
  final int personId;
  final String username;
  final String password;
  final String role;

  User({
    required this.idUser,
    required this.personId,
    required this.username,
    required this.password,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      idUser: json['idUser'],
      personId: json['personId'],
      username: json['username'],
      password: json['password'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idUser': idUser,
      'personId': personId,
      'username': username,
      'password': password,
      'role': role,
    };
  }
}
