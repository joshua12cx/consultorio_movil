// lib/agenda/agenda_screen.dart

import 'package:flutter/material.dart';
import '../screens/custom_drawer.dart';

class AgendaScreen extends StatefulWidget {
  @override
  _AgendaScreenState createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  // Ejemplo de citas para mostrar, ahora con un campo `status`
  final List<Map<String, String>> appointments = [
    {'date': '2023-11-13', 'time': '10:00 AM', 'patient': 'Juan Perez', 'status': 'pendiente'},
    {'date': '2023-11-13', 'time': '2:00 PM', 'patient': 'Maria Lopez', 'status': 'finalizada'},
    {'date': '2023-11-14', 'time': '11:00 AM', 'patient': 'Carlos Ruiz', 'status': 'pendiente'},
  ];

  // Obtén la fecha de hoy en el formato correcto
  final String today = DateTime.now().toString().substring(0, 10);
  
  // Variable para almacenar el estado del filtro
  String filterStatus = 'todas';

  @override
  Widget build(BuildContext context) {
    // Filtrar citas en función del estado seleccionado
    final filteredAppointments = appointments.where((appointment) {
      if (filterStatus == 'todas') {
        return true;
      }
      return appointment['status'] == filterStatus;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda de Citas'),
      ),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: filteredAppointments.length,
        itemBuilder: (context, index) {
          final appointment = filteredAppointments[index];
          bool isToday = appointment['date'] == today;

          return Card(
            color: isToday ? Colors.blue[100] : Colors.white,
            child: ListTile(
              title: Text('Paciente: ${appointment['patient']}'),
              subtitle: Text('Hora: ${appointment['time']}'),
              leading: Icon(
                Icons.calendar_today,
                color: isToday ? Colors.blue : Colors.grey,
              ),
              trailing: isToday
                  ? Text(
                      'Hoy',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Todas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Pendiente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Finalizada',
          ),
        ],
        currentIndex: _getFilterIndex(),
        onTap: (index) {
          setState(() {
            filterStatus = _getStatusFromIndex(index);
          });
        },
      ),
    );
  }

  // Obtener el índice de filtro actual para el BottomNavigationBar
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

  // Convertir el índice del BottomNavigationBar en estado de filtro
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
}
