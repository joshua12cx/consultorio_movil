class ClinicalExamDTO {
  final int idExam;
  final int medicalHistoryId;
  final String examType;
  final String examDate;
  final String findings;
  final String recommendations;

  ClinicalExamDTO({
    required this.idExam,
    required this.medicalHistoryId,
    required this.examType,
    required this.examDate,
    required this.findings,
    required this.recommendations,
  });

  factory ClinicalExamDTO.fromJson(Map<String, dynamic> json) {
    return ClinicalExamDTO(
      idExam: json['idExam'],
      medicalHistoryId: json['medicalHistoryId'],
      examType: json['examType'],
      examDate: json['examDate'],
      findings: json['findings'],
      recommendations: json['recommendations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idExam': idExam,
      'medicalHistoryId': medicalHistoryId,
      'examType': examType,
      'examDate': examDate,
      'findings': findings,
      'recommendations': recommendations,
    };
  }
}
