import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: JPrimaryColor,
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFooterItem(Icons.chat_bubble_outline, 'Chat'),
              _buildFooterItem(Icons.work_outline, 'Jobs'),
              _buildFooterItem(Icons.home_outlined, 'Home'),
              _buildFooterItem(Icons.notifications_none, 'Notifications'),
              _buildFooterItem(Icons.more_horiz, 'More'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooterItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 30), // Increased icon size
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
