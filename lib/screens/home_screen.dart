import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de elementos para los botones
    final List<Map<String, dynamic>> menuItems = [
      {'icon': Icons.account_circle, 'label': 'Perfil', 'route': '/perfil'},
      {'icon': Icons.event, 'label': 'Cita', 'route': '/nueva_cita'},
      {'icon': Icons.calendar_month, 'label': 'Agenda', 'route': '/agenda'},
      {'icon': Icons.assignment, 'label': 'H. Clínico', 'route': '/historial'},
      {'icon': Icons.payment, 'label': 'Pagos', 'route': '/pagos'},
      {'icon': Icons.settings, 'label': 'Ajustes', 'route': '/settings'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: const CustomDrawer(), // Drawer personalizado
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos columnas
            mainAxisSpacing: 16.0, // Espaciado entre filas
            crossAxisSpacing: 16.0, // Espaciado entre columnas
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, item['route']);
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'],
                      size: 50,
                      color: const Color.fromARGB(255, 2, 2, 2),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['label'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
