import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';
class InviteFriend extends StatelessWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InviteFriendScreen(),
    );
  }
}

class InviteFriendScreen extends StatefulWidget {
  const InviteFriendScreen({Key? key}) : super(key: key);

  @override
  State<InviteFriendScreen> createState() => _InviteFriendScreenState();
}

class _InviteFriendScreenState extends State<InviteFriendScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF233A66),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Color(0xFFDAE3F3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back, color: Color(0xFF2B3A67)),
                    SizedBox(width: 65),
                    Text(
                      "Invite Friend",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF2B3A67),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/invite_illustration.jpg',
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: screenWidth * 0.8,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: screenWidth * 0.8,
                  color: const Color(0xFF3A4F88),
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    children: [
                      const Text(
                        "Invite Your Friends",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 3),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDCE6F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10,
                          ),
                          child: Text(
                            "Invite",
                            style: TextStyle(
                              color: Color(0xFF294378),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.68,
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Share",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SocialIcon(
                          key: UniqueKey(),
                          icon: FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        ),
                        const SizedBox(height: 10),
                        SocialIcon(
                          key: UniqueKey(),
                          icon: FontAwesomeIcons.twitter,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SocialIcon(
                          key: UniqueKey(),
                          icon: FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 10),
                        SocialIcon(
                          key: UniqueKey(),
                          icon: FontAwesomeIcons.envelope,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    SocialIcon(
                      key: UniqueKey(),
                      icon: FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FontAwesomeIcons {
  static const IconData whatsapp = IconData(0xf232, fontFamily: 'FontAwesome');
  static const IconData twitter = IconData(0xf099, fontFamily: 'FontAwesome');
  static const IconData facebookF = IconData(0xf39e, fontFamily: 'FontAwesome');
  static const IconData envelope = IconData(0xf0e0, fontFamily: 'FontAwesome');
  static const IconData instagram = IconData(0xf16d, fontFamily: 'FontAwesome');
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SocialIcon({Key? key, required this.icon, required this.color})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 25,
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
