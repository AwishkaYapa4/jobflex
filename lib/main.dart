import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'package:jobflex/chat/chat.dart';
import 'package:jobflex/chat/chat_box.dart';
import 'package:jobflex/chat/new_chat.dart';

=======
>>>>>>> 00394b253b86456d4f98080e80caaec1554b7409
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/payment/payment.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/footer.dart';
<<<<<<< HEAD

import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';

import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/footer.dart';
=======
import 'package:jobflex/supportive_pages/invite_friend.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/payment/payment.dart';
>>>>>>> 00394b253b86456d4f98080e80caaec1554b7409

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Chat());
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserPro(),
    );
>>>>>>> 00394b253b86456d4f98080e80caaec1554b7409
  }
}
