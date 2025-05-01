import 'package:flutter/material.dart';
import 'package:jobflex/profile/user_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {'/userProfile': (context) => const UserPro()},
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define constants to avoid recreating values
  static const Color navyBlue = Color(0xFF233A66);
  static const Color backgroundColor = Color(0xFFECF1FA);
  static const double defaultPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Jobak hoyamu',
        style: TextStyle(
          color: navyBlue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: navyBlue),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          Center(
            child: Image.asset(
              'img/supermarket.png',
              height: 200,
              cacheHeight: 400, // Add caching for better performance
            ),
          ),
          const SizedBox(height: defaultPadding),
          Center(child: _buildSupermarketButton()),
        ],
      ),
    );
  }

  Widget _buildSupermarketButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: navyBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
      child: const Text('see more', style: TextStyle(fontSize: 16)),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: navyBlue,
      selectedItemColor: Colors.white, // Changed for better visibility
      unselectedItemColor: Colors.white70,
      type: BottomNavigationBarType.fixed, // Prevents shifting behavior
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
      ],
    );
  }
}
