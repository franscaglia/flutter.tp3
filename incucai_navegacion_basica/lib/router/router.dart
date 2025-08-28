import 'package:incucai_navegacion_basica/screens/home.dart';
import 'package:incucai_navegacion_basica/screens/login.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: LoginScreen.nombre,
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: HomeScreen.nombre,
      path: '/home',
      builder: (context, state) => HomeScreen(userName: state.extra as String),
    ),
  ],
);
