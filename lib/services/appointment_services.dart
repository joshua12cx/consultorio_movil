import 'dart:convert';
import 'package:consultorio_odontologico_rosales/models/dto/appointment_dto.dart';
import 'package:http/http.dart' as http;

class AppointmentService {
  // Cambia 'localhost' a '10.0.2.2' si estás usando un emulador de Android.
  final String baseUrl = 'http://10.0.2.2:8080/api/appointments';

  // Obtener todas las citas
  Future<List<AppointmentDTO>> getAllAppointments() async {
  final response = await http.get(Uri.parse('$baseUrl/getAll'));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final List<dynamic> data = jsonData['data']; 
    return data.map((item) {
      return AppointmentDTO.fromJson(item);
    }).toList();
  } else {
    throw Exception('Error al obtener las citas: ${response.reasonPhrase}');
  }
}


  // Filtrar citas por estado
  Future<List<AppointmentDTO>> filterAppointmentsByState(String state) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/filterState/$state'));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final List<dynamic> data = jsonData['data'];
        return data.map((item) => AppointmentDTO.fromJson(item)).toList();
      } else {
        throw Exception('Error al filtrar citas: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error en la conexión: $e');
    }
  }

  // Filtrar citas por fecha
  Future<List<AppointmentDTO>> filterAppointmentsByDate(DateTime date) async {
    try {
      final formattedDate = date.toIso8601String();
      final response = await http.get(Uri.parse('$baseUrl/filterDate/$formattedDate'));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final List<dynamic> data = jsonData['data'];
        return data.map((item) => AppointmentDTO.fromJson(item)).toList();
      } else {
        throw Exception('Error al filtrar citas: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error en la conexión: $e');
    }
  }
}
