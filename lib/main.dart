import 'package:flutter/material.dart';
<<<<<<< HEAD
=======

>>>>>>> 7831e6f30bcf473af3f4bd59d658ad314dddc243
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
<<<<<<< HEAD
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';
=======

import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/footer.dart';
>>>>>>> 7831e6f30bcf473af3f4bd59d658ad314dddc243

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const PromotorProfile());
  }
}
