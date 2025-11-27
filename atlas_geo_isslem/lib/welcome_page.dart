import 'package:flutter/material.dart';
import 'pages/countries_page.dart';
 // ← chemin vers ton CountriesPage

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atlas Géographique"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image d'accueil
              Image.asset(
                'assets/globe.png', // Assure-toi que cette image existe
                height: 180,
              ),

              const SizedBox(height: 30),

              const Text(
                "Découvrez les pays du monde",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  // Navigation vers CountriesPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CountriesPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "Explore",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
