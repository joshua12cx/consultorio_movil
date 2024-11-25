class AntecedentsDTO {
  final int idAntecedent;
  final int personId;
  final String type;
  final String description;
  final String date;

  AntecedentsDTO({
    required this.idAntecedent,
    required this.personId,
    required this.type,
    required this.description,
    required this.date,
  });

  factory AntecedentsDTO.fromJson(Map<String, dynamic> json) {
    return AntecedentsDTO(
      idAntecedent: json['idAntecedent'],
      personId: json['personId'],
      type: json['type'],
      description: json['description'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idAntecedent': idAntecedent,
      'personId': personId,
      'type': type,
      'description': description,
      'date': date,
    };
  }
}
