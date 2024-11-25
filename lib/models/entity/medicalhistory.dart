class MedicalHistory {
  final int idHistory;
  final DateTime creationDate;
  final int patientId;
  final String allergies;
  final String observations;

  MedicalHistory({
    required this.idHistory,
    required this.creationDate,
    required this.patientId,
    required this.allergies,
    required this.observations,
  });

  factory MedicalHistory.fromJson(Map<String, dynamic> json) {
    return MedicalHistory(
      idHistory: json['idHistory'],
      creationDate: DateTime.parse(json['creationDate']),
      patientId: json['patientId'],
      allergies: json['allergies'],
      observations: json['observations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idHistory': idHistory,
      'creationDate': creationDate.toIso8601String(),
      'patientId': patientId,
      'allergies': allergies,
      'observations': observations,
    };
  }
}
