import 'package:flutter/material.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/startpages/loging.dart';
<<<<<<< HEAD
import 'package:jobflex/supportive_pages/setting_page.dart';
=======
import 'package:jobflex/screan/home.dart';
>>>>>>> a0dbe0323d5b796632ff6eedde42f54dd8fb6079

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: const SettingPage(),
=======
      home: const HomePage(),
>>>>>>> a0dbe0323d5b796632ff6eedde42f54dd8fb6079
      routes: {
        '/userProfile': (context) => const UserPro(),
        '/more': (context) => const More(), // Example route
        '/login': (context) => const LogingScreen(),
      },
    );
  }
}
