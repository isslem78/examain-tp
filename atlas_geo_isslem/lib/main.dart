import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'pages/countries_page.dart'; // ← chemin correct vers CountriesPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atlas Géographique',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WelcomePage(),

      routes: {
        "/home": (context) => const HomePage(),          // Page principale temporaire
        "/countries": (context) => const CountriesPage(), // Page des pays
      },
    );
  }
}

// Exemple d’écran principal temporaire
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Principale")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenue dans l'application",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigation vers CountriesPage
                Navigator.pushNamed(context, "/countries");
              },
              child: const Text("Voir la liste des pays"),
            ),
          ],
        ),
      ),
    );
  }
}
