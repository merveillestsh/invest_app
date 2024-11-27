import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progress = 0.0; // Variable para el progreso de la barra

  @override
  void initState() {
    super.initState();
    // Inicia el progreso y navega automáticamente después de 10 segundos
    _startProgress();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/home'); // Navegar a la pantalla principal
    });
  }

  // Función para simular el progreso de la barra
  void _startProgress() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _progress += 0.01; // Aumenta el progreso
      });
      if (_progress >= 1.0) {
        timer.cancel(); // Detén el temporizador cuando el progreso llegue a 100%
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Fondo de la pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animación Lottie centrada
            AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 10), // Animación fade-in de 10 segundos
              child: Lottie.asset(
                'assets/animations/welcome.json', // Ruta del archivo JSON
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20), // Espaciado entre la animación y la barra de progreso
            // Barra de progreso
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: 200.0, // Ajusta el ancho de la barra de progreso
                child: LinearProgressIndicator(
                  value: _progress, // Vincula el progreso a la variable
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Color de la barra
                  backgroundColor: Colors.blueAccent, // Color del fondo de la barra
                ),
              ),
            ),
            const SizedBox(height: 20), // Espaciado antes de la transición a la pantalla principal
          ],
        ),
      ),
    );
  }
}
