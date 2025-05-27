import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:jobflex/chat/chat.dart';
import 'package:jobflex/chat/chat_box.dart';
import 'package:jobflex/chat/new_chat.dart';
import 'package:jobflex/chat/chat_search.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/password/send_code_passwrd.dart';
import 'package:jobflex/payment/pay_succ.dart';
import 'package:jobflex/payment/payment.dart';
import 'package:jobflex/profile/promo_admin.dart';
import 'package:jobflex/profile/user_admin.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/screan/Choice.dart';
import 'package:jobflex/screan/categories.dart';
import 'package:jobflex/screan/jobs.dart';
import 'package:jobflex/screan/promotor_home.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/supportive_pages/invite_friend.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/startpages/sign_up.dart';
import 'package:jobflex/supportive_pages/help_center.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/widget/setting_tile.dart';
import 'package:jobflex/screan/Choice.dart';
import 'package:jobflex/startpages/sign_up.dart';
import 'package:jobflex/supportive_pages/help_center.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/password/forget_password.dart';
import 'package:jobflex/profile/edit_profle.dart';
import 'package:jobflex/profile/edit_profile_2.dart';
import 'package:jobflex/profile/choose_photo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     /* initialRoute: '/',


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':
            (context) =>
                const HomePage(), // Set ChoiceScreen as the initial page
        '/more': (context) => const More(),
        '/settingpage': (context) => const SettingPage(),
        '/payment': (context) => PaymentScreen(),
        '/invitefriend': (context) => const InviteFriend(),
        '/helpcenter': (context) => const HelpCenterPage(),
        '/chat': (context) => const Chat(),
        '/chatbox': (context) => const ChatBox(),
        '/newchat': (context) => const NewChat(),
        '/chatsearch': (context) => const ChatSearch(),


        '/signup': (context) => const SignUpPage(),

        '/promotorprofile': (context) => const PromotorProfile(),
        '/useradmin': (context) => const UserAdmin(),
      },
       // Set ChoiceScreen as the initial page
        //  '/categories': (context) => const CategoriesPage(),
        //  '/login': (context) => const LoginPage(),

        '/categories': (context) => CategoriesScreen(),
        //'/login': (context) => const LoginPage()
        '/signup': (context) => const SignUpPage(),
        //'/userprofile': (context) => const UserProfile(),
        '/promotorprofile': (context) => const PromotorProfile(),
        '/useradmin': (context) => const UserAdmin(),
        //'/promoadmin': (context) => const PromoAdmin(),
  }*/
      
      debugShowCheckedModeBanner: false,
      home:ChoosePhoto(), // Set ChoiceScreen as the initial page
    );
  }
}
