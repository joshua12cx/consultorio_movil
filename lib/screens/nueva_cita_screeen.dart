// lib/screens/nueva_cita_screen.dart

import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Importa el CustomDrawer

class NuevaCitaScreen extends StatefulWidget {
  const NuevaCitaScreen({super.key});

  @override
  _NuevaCitaScreenState createState() => _NuevaCitaScreenState();
}

class _NuevaCitaScreenState extends State<NuevaCitaScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controladores de texto para los campos
  final TextEditingController _antecedentesPersonalesController = TextEditingController();
  final TextEditingController _antecedentesFamiliaresController = TextEditingController();
  final TextEditingController _nombreAcompananteController = TextEditingController();
  final TextEditingController _apellidoAcompananteController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Cita'),
      ),
      drawer: const CustomDrawer(), // Añade el Drawer aquí
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Antecedentes Personales:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _antecedentesPersonalesController,
                decoration: const InputDecoration(
                  hintText: 'Ingrese antecedentes personales',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese antecedentes personales';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Antecedentes Familiares:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _antecedentesFamiliaresController,
                decoration: const InputDecoration(
                  hintText: 'Ingrese antecedentes familiares',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese antecedentes familiares';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Nombre del Acompañante (opcional):',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _nombreAcompananteController,
                decoration: const InputDecoration(
                  hintText: 'Ingrese nombre del acompañante',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Apellido del Acompañante (opcional):',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _apellidoAcompananteController,
                decoration: const InputDecoration(
                  hintText: 'Ingrese apellido del acompañante',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'DNI (opcional):',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _dniController,
                decoration: const InputDecoration(
                  hintText: 'Ingrese DNI',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para cancelar y volver atrás
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Aquí puedes agregar la lógica para crear la cita
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Cita creada')),
                        );
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Crear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
