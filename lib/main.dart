import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/setting_tile.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/profile/user_pro.dart';
=======
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
>>>>>>> f389030f6f2f4eac00bb9275f5ce449803199a16

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
 
=======
>>>>>>> f389030f6f2f4eac00bb9275f5ce449803199a16
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserPro(),
    );

<<<<<<< HEAD
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PromotorProfile(),
    );
>>>>>>> f389030f6f2f4eac00bb9275f5ce449803199a16
  }
}
