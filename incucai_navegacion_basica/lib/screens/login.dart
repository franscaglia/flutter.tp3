
import 'package:flutter/material.dart';
import 'package:incucai_navegacion_basica/screens/home.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String nombre = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _LoginView());
  }
}

class _LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  _LoginView();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding( padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              hintText: 'Nombre de usuario',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(onPressed: () {
          context.pushNamed(HomeScreen.nombre, extra: _usernameController.text);
        }), child: const Text('Login'))
      ],
    );
  }
}
