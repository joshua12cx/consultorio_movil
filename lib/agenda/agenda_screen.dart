import 'package:consultorio_odontologico_rosales/models/dto/appointment_dto.dart';
import 'package:consultorio_odontologico_rosales/services/appointment_services.dart';
import 'package:flutter/material.dart';

import '../screens/custom_drawer.dart';

class AgendaScreen extends StatefulWidget {
  const AgendaScreen({super.key});

  @override
  _AgendaScreenState createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  final AppointmentService _service = AppointmentService();

  String filterStatus = 'todas'; // Estado de filtro
  late Future<List<AppointmentDTO>> _appointmentsFuture;

  @override
  void initState() {
    super.initState();
    _fetchAppointments(); // Cargar citas al iniciar la pantalla
  }

  // Método para obtener las citas según el filtro
  void _fetchAppointments() {
    switch (filterStatus) {
      case 'pendiente':
        _appointmentsFuture = _service.filterAppointmentsByState('pendiente');
        break;
      case 'finalizada':
        _appointmentsFuture = _service.filterAppointmentsByState('finalizada');
        break;
      default:
        _appointmentsFuture = _service.getAllAppointments(); // Obtener todas las citas
    }
  }

  // Convierte la fecha String a DateTime
  DateTime parseDate(String dateString) {
    return DateTime.parse(dateString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agenda')),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de filtro
            Text(
              _getFilterTitle(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: FutureBuilder<List<AppointmentDTO>>(
                future: _appointmentsFuture, // Future que obtiene las citas
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator()); // Esperando datos
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}')); // Error en la carga
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return const Center(child: Text('No hay citas disponibles')); // Sin citas
                  } else {
                    final appointments = snapshot.data!; // Citas obtenidas
                    return ListView.builder(
                      itemCount: appointments.length,
                      itemBuilder: (context, index) {
                        final appointment = appointments[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 3,
                          color: appointment.state == 'pendiente'
                              ? Colors.blue[50]
                              : Colors.green[50],
                          child: ListTile(
                            title: Text(
                              'Cita ID: ${appointment.idAppointment}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Convertir la fecha a DateTime y luego mostrarla
                                Text('Fecha: ${parseDate(appointment.appointmentDate).toLocal()}'),
                                Text('tratamiento: ${appointment.notes}'),
                                Text('Estado: ${appointment.state}'),
                              ],
                            ),
                            trailing: Icon(
                              appointment.state == 'pendiente'
                                  ? Icons.access_time
                                  : Icons.check,
                              color: appointment.state == 'pendiente'
                                  ? Colors.blue
                                  : Colors.green,
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todos'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Pendiente'),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Finalizada'),
        ],
        currentIndex: _getFilterIndex(),
        onTap: (index) {
          setState(() {
            filterStatus = _getStatusFromIndex(index); // Actualizar el filtro
            _fetchAppointments(); // Recargar citas con el nuevo filtro
          });
        },
      ),
    );
  }

  // Determina el índice de filtro según el estado actual
  int _getFilterIndex() {
    switch (filterStatus) {
      case 'pendiente':
        return 1;
      case 'finalizada':
        return 2;
      default:
        return 0;
    }
  }

  // Devuelve el filtro correspondiente al índice
  String _getStatusFromIndex(int index) {
    switch (index) {
      case 1:
        return 'pendiente';
      case 2:
        return 'finalizada';
      default:
        return 'todas';
    }
  }

  // Devuelve el título del filtro para mostrar en la parte superior
  String _getFilterTitle() {
    switch (filterStatus) {
      case 'pendiente':
        return 'Pendiente';
      case 'finalizada':
        return 'Finalizadas';
      default:
        return 'Todas';
    }
  }
}
