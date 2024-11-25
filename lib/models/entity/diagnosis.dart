class Diagnosis {
  final int idDiagnosis;
  final int medicalHistoryId;
  final DateTime diagnosisDate;
  final String description;
  final String recommendations;

  Diagnosis({
    required this.idDiagnosis,
    required this.medicalHistoryId,
    required this.diagnosisDate,
    required this.description,
    required this.recommendations,
  });

  factory Diagnosis.fromJson(Map<String, dynamic> json) {
    return Diagnosis(
      idDiagnosis: json['idDiagnosis'],
      medicalHistoryId: json['medicalHistoryId'],
      diagnosisDate: DateTime.parse(json['diagnosisDate']),
      description: json['description'],
      recommendations: json['recommendations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDiagnosis': idDiagnosis,
      'medicalHistoryId': medicalHistoryId,
      'diagnosisDate': diagnosisDate.toIso8601String(),
      'description': description,
      'recommendations': recommendations,
    };
  }
}
