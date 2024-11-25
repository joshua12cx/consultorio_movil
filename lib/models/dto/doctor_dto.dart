class DoctorDTO {
  final int idDoctor;
  final int personId;
  final String specialty;

  DoctorDTO({
    required this.idDoctor,
    required this.personId,
    required this.specialty,
  });

  factory DoctorDTO.fromJson(Map<String, dynamic> json) {
    return DoctorDTO(
      idDoctor: json['idDoctor'],
      personId: json['personId'],
      specialty: json['specialty'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDoctor': idDoctor,
      'personId': personId,
      'specialty': specialty,
    };
  }
}
