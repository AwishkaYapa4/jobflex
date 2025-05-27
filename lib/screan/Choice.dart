import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A2B52), // Dark blue background
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Select your role",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoleOption(
                  icon: Icons.person,
                  label: 'User',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/user',
                    ); // Set route accordingly
                  },
                ),
                _buildRoleOption(
                  icon: Icons.person_outline,
                  label: 'Promoter',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/promoter',
                    ); // Set route accordingly
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  Image.asset(
                    'img/Logopng.png', // replace with your logo path
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: Icon(icon, size: 40, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
