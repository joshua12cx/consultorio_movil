// lib/screens/custom_drawer.dart

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Ramiro Paredes'),
            accountEmail: Text('ramiro@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50, color: Colors.blue),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Citas'),
            onTap: () {
              Navigator.pushNamed(context, '/nueva_cita'); // Asegúrate de tener esta ruta configurada
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Agenda'),
            onTap: () {
              Navigator.pushNamed(context, '/agenda');
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Pagos'),
            onTap: () {
              Navigator.pushNamed(context, '/pagos'); // Asegúrate de tener esta ruta configurada
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar sesión'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
