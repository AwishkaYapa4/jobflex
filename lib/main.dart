import 'package:flutter/material.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/setting_tile.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/profile/user_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserPro(),
    );

  }
}
