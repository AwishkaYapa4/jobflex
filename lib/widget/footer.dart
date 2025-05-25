import 'package:flutter/material.dart';
import 'package:jobflex/chat/chat.dart'; // Import the Chat page

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
        }
        // Add navigation logic for other indices (Jobs, Home, Notifications, More)
      },
      backgroundColor: const Color(0xFF233A66),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble, color: Colors.white),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work, color: Colors.white),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.white),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz, color: Colors.white),
          label: 'More',
        ),
      ],
    );
  }
}
