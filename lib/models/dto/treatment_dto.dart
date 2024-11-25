class TreatmentDTO {
  final int idTreatment;
  final String treatmentName;
  final String treatmentType;
  final String description;
  final double cost;

  TreatmentDTO({
    required this.idTreatment,
    required this.treatmentName,
    required this.treatmentType,
    required this.description,
    required this.cost,
  });

  factory TreatmentDTO.fromJson(Map<String, dynamic> json) {
    return TreatmentDTO(
      idTreatment: json['idTreatment'],
      treatmentName: json['treatmentName'],
      treatmentType: json['treatmentType'],
      description: json['description'],
      cost: json['cost'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idTreatment': idTreatment,
      'treatmentName': treatmentName,
      'treatmentType': treatmentType,
      'description': description,
      'cost': cost,
    };
  }
}
