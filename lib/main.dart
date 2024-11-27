import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Screens/splash_screen.dart'; // Importa la pantalla Splash

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'InvestApp',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Have fun learning how to save and invest your money',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          // Ajustando el tamaño de la animación Lottie
          SizedBox(
            height: 200, // Ajusta la altura de la animación
            width: 200,  // Ajusta la anchura de la animación
            child: Lottie.asset(
              'assets/animations/piggyBank.json', // Ruta de la animación JSON
              fit: BoxFit.contain, // Asegura que la animación se ajuste al espacio disponible
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
