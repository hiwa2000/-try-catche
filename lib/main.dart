import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Error Handling Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              try {
                // Hier wird ein Fehler erzeugt
                throw Exception('Dies ist ein Beispiel-Fehler');
              } catch (e) {
                // Hier wird der Fehler abgefangen und in einer SnackBar angezeigt
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Fehler aufgetreten: $e'),
                  ),
                );
              }
            },
            child: Text('Fehler erzeugen'),
          ),
        ),
      ),
    );
  }
}