import 'package:flutter/material.dart';
import 'data.dart';
import 'package:solar_system/planet_detail_screen.dart';

class PlanetListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solar System'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/space_background.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: planets.length,
          itemBuilder: (context, index) {
            final planet = planets[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    planet.imagePath,
                    width: 80,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  planet.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                subtitle: Text(
                  planet.description,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => PlanetDetailScreen(planet: planet),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(position: offsetAnimation, child: child);
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
