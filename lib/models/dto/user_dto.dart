class UserDTO {
  final int idUser;
  final int personId;
  final String username;
  final String password;
  final String role;

  UserDTO({
    required this.idUser,
    required this.personId,
    required this.username,
    required this.password,
    required this.role,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(
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
