class OdontogramDTO {
  final int idOdontogram;
  final int medicalHistoryId;
  final String creationDate;
  final String details;

  OdontogramDTO({
    required this.idOdontogram,
    required this.medicalHistoryId,
    required this.creationDate,
    required this.details,
  });

  factory OdontogramDTO.fromJson(Map<String, dynamic> json) {
    return OdontogramDTO(
      idOdontogram: json['idOdontogram'],
      medicalHistoryId: json['medicalHistoryId'],
      creationDate: json['creationDate'],
      details: json['details'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idOdontogram': idOdontogram,
      'medicalHistoryId': medicalHistoryId,
      'creationDate': creationDate,
      'details': details,
    };
  }
}
