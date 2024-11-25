class MedicalHistoryDTO {
  final int idHistory;
  final String creationDate;
  final int patientId;
  final String allergies;
  final String observations;

  MedicalHistoryDTO({
    required this.idHistory,
    required this.creationDate,
    required this.patientId,
    required this.allergies,
    required this.observations,
  });

  factory MedicalHistoryDTO.fromJson(Map<String, dynamic> json) {
    return MedicalHistoryDTO(
      idHistory: json['idHistory'],
      creationDate: json['creationDate'],
      patientId: json['patientId'],
      allergies: json['allergies'],
      observations: json['observations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idHistory': idHistory,
      'creationDate': creationDate,
      'patientId': patientId,
      'allergies': allergies,
      'observations': observations,
    };
  }
}
