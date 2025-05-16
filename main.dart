<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:jobflex/profile/promotor_profile.dart';
import 'package:jobflex/widget/setting_tile.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/models/setting.dart';

void main() {
  runApp(const JobflexApp());
}

class JobflexApp extends StatelessWidget {
  const JobflexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobflex',
      debugShowCheckedModeBanner: false,
      home: PromotorProfile(),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:jobflex/notification_page.dart';

void main() {
  runApp(const JobflexApp());
}

class JobflexApp extends StatelessWidget {
  const JobflexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobflex',
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}
>>>>>>> 1a793af967b3671963b83245b7e714e1b54a5287
