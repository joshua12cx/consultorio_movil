class AppointmentDTO {
  final int idAppointment;
  final String appointmentDate; // Mantén las fechas como String
  final String appointmentDateEnd;
  final int patientId;
  final int treatmentId;
  final int scheduleId;
  final int doctorId;
  final String notes;
  final String state;

  AppointmentDTO({
    required this.idAppointment,
    required this.appointmentDate,
    required this.appointmentDateEnd,
    required this.patientId,
    required this.treatmentId,
    required this.scheduleId,
    required this.doctorId,
    required this.notes,
    required this.state,
  });

  factory AppointmentDTO.fromJson(Map<String, dynamic> json) {
    return AppointmentDTO(
      idAppointment: json['idAppointment'] != null
          ? json['idAppointment']
          : 0, // Asegúrate de que no sea null
      appointmentDate: json['appointmentDate'] ??
          '', // Si es null, asigna un valor por defecto
      appointmentDateEnd: json['appointmentDateEnd'] ??
          '', // Si es null, asigna un valor por defecto
      patientId: json['patientId'] ?? 0, // Valor por defecto si es null
      treatmentId: json['treatmentId'] ?? 0, // Valor por defecto si es null
      scheduleId: json['scheduleId'] ?? 0, // Valor por defecto si es null
      doctorId: json['doctorId'] ?? 0, // Valor por defecto si es null
      notes: json['notes'] ?? '', // Valor por defecto si es null
      state: json['state'] ?? 'pendiente', // Valor por defecto si es null
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idAppointment': idAppointment,
      'appointmentDate': appointmentDate,
      'appointmentDateEnd': appointmentDateEnd,
      'patientId': patientId,
      'treatmentId': treatmentId,
      'scheduleId': scheduleId,
      'doctorId': doctorId,
      'notes': notes,
      'state': state,
    };
  }
}
