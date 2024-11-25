class DiagnosisDTO {
  final int idDiagnosis;
  final int medicalHistoryId;
  final String diagnosisDate;
  final String description;
  final String recommendations;

  DiagnosisDTO({
    required this.idDiagnosis,
    required this.medicalHistoryId,
    required this.diagnosisDate,
    required this.description,
    required this.recommendations,
  });

  factory DiagnosisDTO.fromJson(Map<String, dynamic> json) {
    return DiagnosisDTO(
      idDiagnosis: json['idDiagnosis'],
      medicalHistoryId: json['medicalHistoryId'],
      diagnosisDate: json['diagnosisDate'],
      description: json['description'],
      recommendations: json['recommendations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDiagnosis': idDiagnosis,
      'medicalHistoryId': medicalHistoryId,
      'diagnosisDate': diagnosisDate,
      'description': description,
      'recommendations': recommendations,
    };
  }
}
