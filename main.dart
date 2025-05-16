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
