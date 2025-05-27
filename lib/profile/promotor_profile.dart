import 'package:flutter/material.dart';
import 'package:jobflex/widget/footer.dart';

class PromotorProfile extends StatelessWidget {
  const PromotorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFECF1FA),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF233A66)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Column(
            children: [
              
              Container(
                height: 660,
                decoration: BoxDecoration(
                  color: Color(0xFFECF1FA),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
              padding: const EdgeInsets.all(20),
              
        
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('img/Promo.jpg'), // Replace with your image
              ),
              const CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xFFECF1FA),
                child: Icon(
                  Icons.edit,
                  size: 18,
                  color: Color(0xFF233A66),
                ),
              ),
            ],
          ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tanya Nur',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2A44),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('Age', style: TextStyle(color: Color(0xFFB9B9B9))),
                    Text(
                      'Status',
                      style: TextStyle(color: Color(0xFFB9B9B9)),
                    ),
                    Text(
                      'Registration ID',
                      style: TextStyle(color: Color(0xFFB9B9B9)),
                    ),
                  ],
                ),
              ],
            ),
                SizedBox(height: 60),
                Text('Full Name', style: TextStyle(color: Color(0xFF2D4C82))),
                Text(
                  'Tanya Nur',
                  style: TextStyle(fontSize: 16, color: Color(0xFF233A66)),
                ),
                SizedBox(height: 20),
                Text(
                  'Name with initials',
                  style: TextStyle(color: Color(0xFF2D4C82)),
                ),
                Text(
                  'Tanya Nur',
                  style: TextStyle(fontSize: 16, color: Color(0xFF233A66)),
                ),
                SizedBox(height: 20),
                Text('E-mail', style: TextStyle(color: Color(0xFF2D4C82))),
                Text(
                  'tanyabeautybar@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF233A66),
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 20),
                Text('Address', style: TextStyle(color: Color(0xFF2D4C82))),
                Text(
                  'No 123, Galle Road, Colombo',
                  style: TextStyle(fontSize: 16, color: Color(0xFF233A66)),
                ),
                SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: TextStyle(color: Color(0xFF2D4C82)),
                ),
                Text(
                  '077-1234556',
                  style: TextStyle(fontSize: 16, color: Color(0xFF233A66)),
                ),
                SizedBox(height: 20),
                Text(
                  'Official Phone Number',
                  style: TextStyle(color: Color(0xFF2D4C82)),
                ),
                Text(
                  '077-1234556',
                  style: TextStyle(fontSize: 16, color: Color(0xFF233A66)),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF233A66),
      bottomNavigationBar: const Footer(),
    );
  }
}
