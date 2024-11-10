import 'package:flutter/material.dart';
import 'home_screen.dart';  // Importer la page d'accueil

void main() {
  runApp(SolarSystemApp());
}

class SolarSystemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar System',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        hintColor: Colors.lightBlueAccent,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins', fontSize: 24, color: Colors.white),
          bodyMedium: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.blue),
        ),
      ),
      home: HomeScreen(),  // Définir la page d'accueil comme l'écran principal
    );
  }
}
