import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my cool recipe app'),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.blueGrey.shade200,
        body: Column(
          children: [ // List<Widget>
          Padding(
            padding: EdgeInsets.all(16.0),
            child: const Text(
              "my cool recipe app",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
          Image.asset(
            'assets/images/recipe.jpg',
            height: 400.0,
            ),
          ],
        ),
      ),
    );
  }
}

