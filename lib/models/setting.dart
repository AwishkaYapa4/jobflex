import 'package:flutter/cupertino.dart';

class Setting {
  final String title;
  final String route;
  final IconData icon;

  Setting({required this.title, required this.route, required this.icon});
}

final List<Setting> settings = [
  Setting(title: "Settings", route: "/", icon: CupertinoIcons.settings),

  Setting(title: "Payment", route: "/", icon: CupertinoIcons.creditcard_fill),

  Setting(
    title: "invite your friend",
    route: "/",
    icon: CupertinoIcons.person_add_solid,
  ),
  Setting(title: "About us", route: "/", icon: CupertinoIcons.info_circle_fill),
  Setting(
    title: "Help Center",
    route: "/",
    icon: CupertinoIcons.question_circle_fill,
  ),
  Setting(title: "Privacy", route: "/", icon: CupertinoIcons.lock_fill),
];
