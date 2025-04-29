import 'package:flutter/material.dart';

class UserPro extends StatelessWidget {
  const UserPro({super.key}); // <-- const constructor

static const Color navyBlue = Color(0xFF233A66);
static const Color backgroundColor = Color(0xFFECF1FA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text('User Profile'),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: navyBlue),
        onPressed: () {
          Navigator.pop(context); // Go back to the previous screen
        },
      ),

      ),
      body: const Center(
        child: Text('User Profile Page Content'),
      ),
    );
  }
}
