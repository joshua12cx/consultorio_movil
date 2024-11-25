class ConsultationDTO {
  final int idConsultation;
  final String consultationDate;
  final int personId;
  final String reason;
  final String details;

  ConsultationDTO({
    required this.idConsultation,
    required this.consultationDate,
    required this.personId,
    required this.reason,
    required this.details,
  });

  factory ConsultationDTO.fromJson(Map<String, dynamic> json) {
    return ConsultationDTO(
      idConsultation: json['idConsultation'],
      consultationDate: json['consultationDate'],
      personId: json['personId'],
      reason: json['reason'],
      details: json['details'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idConsultation': idConsultation,
      'consultationDate': consultationDate,
      'personId': personId,
      'reason': reason,
      'details': details,
    };
  }
}
