// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      drawer: const CustomDrawer(), // Usa el Drawer personalizado
      body: const Center(child: Text('Bienvenido al consultorio odontológico')),
    );
  }
}
