import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFECF1FA),

        body: Center(child: Text('Demo')),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF233A66),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Footer Content Here',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
