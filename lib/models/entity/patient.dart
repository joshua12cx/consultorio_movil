class Patient {
  final int idPatient;
  final int personId;

  Patient({
    required this.idPatient,
    required this.personId,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      idPatient: json['idPatient'],
      personId: json['personId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idPatient': idPatient,
      'personId': personId,
    };
  }
}
