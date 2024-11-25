class PersonDTO {
  final int idPerson;
  final String firstName;
  final String lastNameFather;
  final String lastNameMother;
  final String gender;
  final DateTime birthDate;
  final String phone;
  final String dni;
  final String address;

  PersonDTO({
    required this.idPerson,
    required this.firstName,
    required this.lastNameFather,
    required this.lastNameMother,
    required this.gender,
    required this.birthDate,
    required this.phone,
    required this.dni,
    required this.address,
  });

  factory PersonDTO.fromJson(Map<String, dynamic> json) {
    return PersonDTO(
      idPerson: json['idPerson'],
      firstName: json['firstName'],
      lastNameFather: json['lastNameFather'],
      lastNameMother: json['lastNameMother'],
      gender: json['gender'],
      birthDate: DateTime.parse(json['birthDate']),
      phone: json['phone'],
      dni: json['dni'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idPerson': idPerson,
      'firstName': firstName,
      'lastNameFather': lastNameFather,
      'lastNameMother': lastNameMother,
      'gender': gender,
      'birthDate': birthDate.toIso8601String(),
      'phone': phone,
      'dni': dni,
      'address': address,
    };
  }
}
