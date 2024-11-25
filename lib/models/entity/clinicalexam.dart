class ClinicalExam {
  final int idExam;
  final int medicalHistoryId;
  final String examType;
  final DateTime examDate;
  final String findings;
  final String recommendations;

  ClinicalExam({
    required this.idExam,
    required this.medicalHistoryId,
    required this.examType,
    required this.examDate,
    required this.findings,
    required this.recommendations,
  });

  factory ClinicalExam.fromJson(Map<String, dynamic> json) {
    return ClinicalExam(
      idExam: json['idExam'],
      medicalHistoryId: json['medicalHistoryId'],
      examType: json['examType'],
      examDate: DateTime.parse(json['examDate']),
      findings: json['findings'],
      recommendations: json['recommendations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idExam': idExam,
      'medicalHistoryId': medicalHistoryId,
      'examType': examType,
      'examDate': examDate.toIso8601String(),
      'findings': findings,
      'recommendations': recommendations,
    };
  }
}
