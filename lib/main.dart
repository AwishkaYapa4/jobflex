import 'package:flutter/material.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/startpages/loging.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const More(),
      routes: {
        '/userProfile': (context) => const UserPro(),
        '/more': (context) => const More(), // Example route
        '/login': (context) => const LogingScreen(),
      },
    );
  }
}
