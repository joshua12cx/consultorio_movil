class Odontogram {
  final int idOdontogram;
  final int medicalHistoryId;
  final DateTime creationDate;
  final String details;

  Odontogram({
    required this.idOdontogram,
    required this.medicalHistoryId,
    required this.creationDate,
    required this.details,
  });

  factory Odontogram.fromJson(Map<String, dynamic> json) {
    return Odontogram(
      idOdontogram: json['idOdontogram'],
      medicalHistoryId: json['medicalHistoryId'],
      creationDate: DateTime.parse(json['creationDate']),
      details: json['details'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idOdontogram': idOdontogram,
      'medicalHistoryId': medicalHistoryId,
      'creationDate': creationDate.toIso8601String(),
      'details': details,
    };
  }
}
