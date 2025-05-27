import 'package:flutter/material.dart';
import 'package:jobflex/chat/chat.dart'; // Import the Chat page
import 'package:jobflex/screan/home.dart'; // Import the Home page
import 'package:jobflex/screan/categories.dart';
import 'package:jobflex/supportive_pages/help_center.dart'; // Import the Help Center page
import 'package:jobflex/footer_pages/more.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

        // Navigation logic
        if (index == 0) {
          // Navigate to Chat page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chat()),
          );
        } else if (index == 1) {
          // Navigate to Categories page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Chat(),
            ), // Replace Chat() with CategoriesPage()
          );
        } else if (index == 2) {
          // Corrected index for Home
          // Navigate to Home page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        } else if (index == 3) {
          // Corrected index for Home
          // Navigate to Home page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HelpCenterPage()),
          );
        } else if (index == 4) {
          // Corrected index for Home
          // Navigate to Home page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const More()),
          );
        }
        // Add navigation logic for other indices (Notifications, More)
      },

      backgroundColor: const  Color(0xFF1F2A44),
      selectedItemColor:  Color(0xFFECF1FA),
      unselectedItemColor:  Color(0xFFECF1FA),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble, color:  Color(0xFFECF1FA)),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work, color:  Color(0xFFECF1FA)),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color:  Color(0xFFECF1FA)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color:  Color(0xFFECF1FA)),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz, color:  Color(0xFFECF1FA)),
          label: 'More',
        ),
      ],
    );
  }
}