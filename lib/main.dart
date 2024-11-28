import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Screens/splash_screen.dart'; // Importa la pantalla Splash
import 'Screens/login.dart'; // Importa la pantalla de Login
import 'Screens/register.dart'; // Importa la pantalla de Register
import 'Screens/dashboard.dart'; // Importa la pantalla de Dashboard

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InvestApp',
      // Define las rutas de la aplicación
      routes: {
        '/': (context) => const SplashScreen(), // Ruta inicial (Splash)
        '/home': (context) => const MyAppHome(), // Ruta para la pantalla principal
        '/login': (context) => const LoginPage(), // Ruta para la pantalla de Login
        '/register': (context) => const RegisterPage(), // Ruta para la pantalla de Register
        '/dashboard': (context) => const DashboardPage(), // Ruta para la pantalla de Dashboard
      },
    );
  }
}

// Pantalla principal de la app
class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra todos los elementos
          crossAxisAlignment: CrossAxisAlignment.center, // Alinea los elementos en el centro
          children: [
            const Text(
              'InvestApp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Have fun learning how to save and invest your money',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Ajustando el tamaño de la animación Lottie
            SizedBox(
              height: 200, // Ajusta la altura de la animación
              width: 200,  // Ajusta la anchura de la animación
              child: Lottie.asset(
                'assets/animations/piggyBank.json', // Ruta de la animación JSON
                fit: BoxFit.contain, // Asegura que la animación se ajuste al espacio disponible
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                // Botón para navegar a la pantalla de Login
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                // Botón para navegar a la pantalla de Register
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
