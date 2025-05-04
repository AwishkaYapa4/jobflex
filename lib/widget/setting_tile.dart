import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/models/setting.dart';

class SettingTile extends StatelessWidget {
  final Setting setting;
  const SettingTile({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Icon(setting.icon, color: JPrimaryColor),
          ),
          const SizedBox(width: 5),
          Text(
            setting.title,
            style: const TextStyle(fontSize: 20, color: JPrimaryColor),
          ),
          const Spacer(),
          const Icon(CupertinoIcons.chevron_forward, color: JPrimaryColor),
        ],
      ),
    );
  }
}
