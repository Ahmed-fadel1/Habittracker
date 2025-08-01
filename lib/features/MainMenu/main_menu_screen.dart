import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Choose Your Section",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                backgroundColor: Colors.deepPurple,
              ),
              icon: const Icon(Icons.task, color: Colors.white),
              label: const Text("Tasks", style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.pushNamed(context, '/tasks'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                backgroundColor: Colors.deepPurple,
              ),
              icon: const Icon(Icons.note, color: Colors.white),
              label: const Text("Notes", style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.pushNamed(context, '/notes'),
            ),
          ],
        ),
      ),
    );
  }
}
