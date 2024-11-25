class VitalSigns {
  final int idVitalSign;
  final int medicalHistoryId;
  final DateTime measurementDate;
  final String bloodPressure;
  final int heartRate;
  final double temperature;
  final int respiratoryRate;

  VitalSigns({
    required this.idVitalSign,
    required this.medicalHistoryId,
    required this.measurementDate,
    required this.bloodPressure,
    required this.heartRate,
    required this.temperature,
    required this.respiratoryRate,
  });

  factory VitalSigns.fromJson(Map<String, dynamic> json) {
    return VitalSigns(
      idVitalSign: json['idVitalSign'],
      medicalHistoryId: json['medicalHistoryId'],
      measurementDate: DateTime.parse(json['measurementDate']),
      bloodPressure: json['bloodPressure'],
      heartRate: json['heartRate'],
      temperature: json['temperature'].toDouble(),
      respiratoryRate: json['respiratoryRate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idVitalSign': idVitalSign,
      'medicalHistoryId': medicalHistoryId,
      'measurementDate': measurementDate.toIso8601String(),
      'bloodPressure': bloodPressure,
      'heartRate': heartRate,
      'temperature': temperature,
      'respiratoryRate': respiratoryRate,
    };
  }
}
