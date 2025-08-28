import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int contador = 0;
  bool clickeado = false;
  String variable = 'Mensaje cuando el flag esta en false ';
  String mensajeDos = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  variable,
                  style: const TextStyle(fontSize: 34),
                  textAlign: TextAlign.center,
                ),
                Text(
                  mensajeDos,
                  style: const TextStyle(fontSize: 34),
                  textAlign: TextAlign.center,
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      if (clickeado) {
                        clickeado = !clickeado;
                        variable = 'mensaje cuando el flag esta en true';
                      } else {
                        clickeado = !clickeado;
                        variable = 'mensaje cuando el flag vuelve a false';
                      }
                    });
                  },
                  child: const Text(
                    'click aqui para cambiar el contenido del mensaje',
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      contador++;
                      if (contador == 3) {
                        mensajeDos = 'para maquina clickeaste muchas veces';
                      } else {
                        if (contador == 6) {
                          mensajeDos = 'uno mas y se borra el mensaje';
                        } else {
                          if (contador == 7) {
                            mensajeDos = '';
                          }
                        }
                      }
                    });
                  },
                  child: const Text('click tres veces'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
