import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/setting_tile.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  "More",
                  style: TextStyle(fontSize: 20, color: JPrimaryColor),
                ),
              ),
              const SizedBox(height: 20),
              const AvatarCard(),
              const SizedBox(height: 20),
              Column(
                children: List.generate(
                  settings.length,
                  (index) => Column(
                    children: [
                      SettingTile(setting: settings[index]),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle sign out logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: JPrimaryColor,
                  ),
                  child: const Text("Sign Out"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarCard extends StatelessWidget {
  const AvatarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset('img/supermarket.png', scale: 5),
        ),
        SizedBox(width: 23),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "R.S Rusiru",
              style: TextStyle(fontSize: 25, color: JPrimaryColor),
            ),
            const Text(
              'Your profile',
              style: TextStyle(fontSize: 12, color: JPrimaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
