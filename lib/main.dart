import 'package:consultorio_odontologico_rosales/agenda/agenda_screen.dart';
import 'package:consultorio_odontologico_rosales/screens/home_screen.dart';
import 'package:consultorio_odontologico_rosales/screens/login_screen.dart';
import 'package:consultorio_odontologico_rosales/screens/nueva_cita_screeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultorio Odontológico Rosales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/agenda': (context) => AgendaScreen(),
        '/nueva_cita' :(context) => NuevaCitaScreen(),
      },
    );
  }
}