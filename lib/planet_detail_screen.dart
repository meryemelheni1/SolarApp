import 'package:flutter/material.dart';
import 'planet.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  PlanetDetailScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              planet.imagePath,
              height: 350,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              planet.name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              planet.description,
              style: TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
           
          ],
        ),
      ),
    );
  }
}
