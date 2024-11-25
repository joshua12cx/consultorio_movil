class Consultation {
  final int idConsultation;
  final DateTime consultationDate;
  final int personId;
  final String reason;
  final String details;

  Consultation({
    required this.idConsultation,
    required this.consultationDate,
    required this.personId,
    required this.reason,
    required this.details,
  });

  factory Consultation.fromJson(Map<String, dynamic> json) {
    return Consultation(
      idConsultation: json['idConsultation'],
      consultationDate: DateTime.parse(json['consultationDate']),
      personId: json['personId'],
      reason: json['reason'],
      details: json['details'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idConsultation': idConsultation,
      'consultationDate': consultationDate.toIso8601String(),
      'personId': personId,
      'reason': reason,
      'details': details,
    };
  }
}
