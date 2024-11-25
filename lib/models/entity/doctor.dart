class Doctor {
  final int idDoctor;
  final int personId;
  final String specialty;

  Doctor({
    required this.idDoctor,
    required this.personId,
    required this.specialty,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
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
