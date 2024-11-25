import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'icon': Icons.home, 'label': 'Inicio', 'route': '/home'},
      {'icon': Icons.calendar_today, 'label': 'Citas', 'route': '/nueva_cita'},
      {'icon': Icons.calendar_month, 'label': 'Agenda', 'route': '/agenda'},
      {'icon': Icons.payment, 'label': 'Pagos', 'route': '/pagos'},
      {'icon': Icons.logout, 'label': 'Cerrar sesión', 'route': '/login'},
    ];

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Ramiro Paredes'),
            accountEmail: Text('ramiro@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50, color: Colors.blue),
            ),
          ),
          ...menuItems.map((item) => ListTile(
                leading: Icon(item['icon']),
                title: Text(item['label']),
                onTap: () => Navigator.pushNamed(context, item['route']),
              )),
        ],
      ),
    );
  }
}
