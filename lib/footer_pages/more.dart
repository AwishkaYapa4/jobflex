import 'package:flutter/material.dart';
import 'package:jobflex/models/setting.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/widget/setting_tile.dart';
import 'package:jobflex/profile/promotor_profile.dart'; // Import the PromotorProfile page

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF233A66)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "More",
          style: TextStyle(fontSize: 20, color: Color(0xFF233A66)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PromotorProfile(),
                    ), // Navigate to PromotorProfile
                  );
                },
                child: const AvatarCard(),
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(
                  settings.length,
                  (index) => Column(
                    children: [
                      SettingTile(setting: settings[index]),
                      const SizedBox(height: 10),
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
                    foregroundColor: const Color(0xFF233A66),
                  ),
                  child: const Text("Sign Out"),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
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
        const SizedBox(width: 23),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mr.Nadeemal",
              style: TextStyle(fontSize: 25, color: Color(0xFF233A66)),
            ),
            Text(
              'I am superman',
              style: TextStyle(fontSize: 12, color: Color(0xFF233A66)),
            ),
          ],
        ),
      ],
    );
  }
}
