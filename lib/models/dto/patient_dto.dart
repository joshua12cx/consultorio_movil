class PatientDTO {
  final int idPatient;
  final int personId;

  PatientDTO({required this.idPatient, required this.personId});

  factory PatientDTO.fromJson(Map<String, dynamic> json) {
    return PatientDTO(
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
