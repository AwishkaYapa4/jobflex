import 'package:flutter/material.dart';

import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/payment/payment.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/payment/payment.dart';
import 'package:jobflex/startpages/sign_up.dart';
import 'package:jobflex/profile/user_admin.dart';
import 'package:jobflex/supportive_pages/help_center.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< Updated upstream
      home: HelpCenterPage(),
=======
      home: const InviteFriendScreen(),
>>>>>>> Stashed changes
    );
  }
}
