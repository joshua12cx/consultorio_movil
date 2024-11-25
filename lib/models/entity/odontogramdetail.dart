class OdontogramDetail {
  final int idDetail;
  final int odontogramId;
  final String tooth;
  final String toothCondition;
  final String treatment;
  final String observations;

  OdontogramDetail({
    required this.idDetail,
    required this.odontogramId,
    required this.tooth,
    required this.toothCondition,
    required this.treatment,
    required this.observations,
  });

  factory OdontogramDetail.fromJson(Map<String, dynamic> json) {
    return OdontogramDetail(
      idDetail: json['idDetail'],
      odontogramId: json['odontogramId'],
      tooth: json['tooth'],
      toothCondition: json['toothCondition'],
      treatment: json['treatment'],
      observations: json['observations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDetail': idDetail,
      'odontogramId': odontogramId,
      'tooth': tooth,
      'toothCondition': toothCondition,
      'treatment': treatment,
      'observations': observations,
    };
  }
}
