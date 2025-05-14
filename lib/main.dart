import 'package:flutter/material.dart';
import 'package:jobflex/footer_pages/more.dart';
import 'package:jobflex/profile/user_pro.dart';
import 'package:jobflex/startpages/loging.dart';
import 'package:jobflex/supportive_pages/setting_page.dart';
import 'package:jobflex/screan/home.dart';
<<<<<<< HEAD
import 'package:jobflex/profile/promotor_profile.dart';
=======
import 'package:jobflex/widget/footer.dart';
>>>>>>> 669847b5ba98a305b5ad90113a13d547a4487db4

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PromotorProfile(),
    );
=======
    return MaterialApp(debugShowCheckedModeBanner: false, home: const PromotorProfile()
>>>>>>> 669847b5ba98a305b5ad90113a13d547a4487db4
  }
}
