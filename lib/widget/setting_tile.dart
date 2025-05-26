import 'package:flutter/material.dart';
import 'package:jobflex/models/setting.dart';

class SettingTile extends StatelessWidget {
  final Setting setting;
  const SettingTile({Key? key, required this.setting}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, setting.route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(setting.icon, color: const Color(0xFF233A66)),
              const SizedBox(width: 20),
              Text(
                setting.title,
                style: const TextStyle(fontSize: 18, color: Color(0xFF233A66)),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_sharp, color: Color(0xFF233A66)),
        ],
      ),
    );
  }
}
