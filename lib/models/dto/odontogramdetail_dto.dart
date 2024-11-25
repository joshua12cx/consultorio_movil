class OdontogramDetailDTO {
  final int idDetail;
  final int odontogramId;
  final String tooth;
  final String toothCondition;
  final String treatment;
  final String observations;

  OdontogramDetailDTO({
    required this.idDetail,
    required this.odontogramId,
    required this.tooth,
    required this.toothCondition,
    required this.treatment,
    required this.observations,
  });

  factory OdontogramDetailDTO.fromJson(Map<String, dynamic> json) {
    return OdontogramDetailDTO(
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
