class Appointment {
  final int idAppointment;
  final DateTime appointmentDate;
  final DateTime appointmentDateEnd;
  final int patientId;
  final int treatmentId;
  final int doctorId;
  final String notes;
  final String state;

  Appointment({
    required this.idAppointment,
    required this.appointmentDate,
    required this.appointmentDateEnd,
    required this.patientId,
    required this.treatmentId,
    required this.doctorId,
    required this.notes,
    required this.state,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      idAppointment: json['idAppointment'],
      appointmentDate: DateTime.parse(json['appointmentDate']),
      appointmentDateEnd: DateTime.parse(json['appointmentDateEnd']),
      patientId: json['patientId'],
      treatmentId: json['treatmentId'],
      doctorId: json['doctorId'],
      notes: json['notes'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idAppointment': idAppointment,
      'appointmentDate': appointmentDate.toIso8601String(),
      'appointmentDateEnd': appointmentDateEnd.toIso8601String(),
      'patientId': patientId,
      'treatmentId': treatmentId,
      'doctorId': doctorId,
      'notes': notes,
      'state': state,
    };
  }
}
