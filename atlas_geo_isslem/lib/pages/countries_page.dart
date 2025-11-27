import 'package:flutter/material.dart';
import '../welcome_page.dart';
import '../about_page.dart'; // ← nouveau import

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  final List<Map<String, String>> countries = const [
    {"name": "France", "flag": "assets/flags/france.png"},
    {"name": "Tunisie", "flag": "assets/flags/tunisia.png"},
    {"name": "Brésil", "flag": "assets/flags/brazil.png"},
    {"name": "Italie", "flag": "assets/flags/italy.png"},
    {"name": "Canada", "flag": "assets/flags/canada.png"},
    {"name": "Australie", "flag": "assets/flags/australia.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Pays"),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade100),
              child: Column(
                children: const [
                  Icon(Icons.public, size: 70, color: Colors.blue),
                  SizedBox(height: 10),
                  Text("Atlas Géographique", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Accueil"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WelcomePage()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("À propos"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            ),

            const Spacer(),

            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Quitter"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(country["flag"]!),
                radius: 25,
              ),
              title: Text(
                country["name"]!,
                style: const TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                // Navigation future vers détails si tu veux
              },
            ),
          );
        },
      ),
    );
  }
}
