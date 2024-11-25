class Antecedent {
  final int idAntecedent;
  final int personId;
  final String type;
  final String description;
  final DateTime date;

  Antecedent({
    required this.idAntecedent,
    required this.personId,
    required this.type,
    required this.description,
    required this.date,
  });

  factory Antecedent.fromJson(Map<String, dynamic> json) {
    return Antecedent(
      idAntecedent: json['idAntecedent'],
      personId: json['personId'],
      type: json['type'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idAntecedent': idAntecedent,
      'personId': personId,
      'type': type,
      'description': description,
      'date': date.toIso8601String(),
    };
  }
}
