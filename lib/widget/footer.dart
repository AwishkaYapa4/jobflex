import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: JPrimaryColor,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
          label: 'Chat',
        ),
        NavigationDestination(
          icon: Icon(Icons.work_outline, color: Colors.white),
          label: 'Jobs',
        ),
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: Colors.white),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.notifications_none, color: Colors.white),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Icon(Icons.more_horiz, color: Colors.white),
          label: 'More',
        ),
      ],
    );
  }
}
