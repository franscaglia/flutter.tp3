import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String nombre = 'homee';
  String userName;

  HomeScreen({super.key, this.userName = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla de Inicio')),
      body: Center(child: Text('Bienvenido $userName')),
    );
  }
}
