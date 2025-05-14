import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';

class PromotorProfile extends StatelessWidget {
  const PromotorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            decoration: BoxDecoration(color: JPrimaryColor),
          ),
          Stack(
            children: [
              Positioned(
                top: 120,
                left: 16,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/profile.jpg',
                      ), // Replace with your image
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tanya Nur',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2A44),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Age', style: TextStyle(color: Colors.grey)),
                        Text('Status', style: TextStyle(color: Colors.grey)),
                        Text(
                          'Registration ID',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between red header and next section
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Full Name', style: TextStyle(color: Colors.grey)),
                        Text('Tanya Nur', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 20),
                        Text(
                          'Name with initials',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('Tanya Nur', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 20),
                        Text('E-mail', style: TextStyle(color: Colors.grey)),
                        Text(
                          'tanyabeautybar@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Address', style: TextStyle(color: Colors.grey)),
                        Text(
                          '*******************************',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('077-1234556', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 20),
                        Text(
                          'Official Phone Number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('077-1234556', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      backgroundColor: JPrimaryLightColor,
    );
  }
}
