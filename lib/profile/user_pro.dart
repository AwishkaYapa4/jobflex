import 'package:flutter/material.dart';


class UserPro extends StatelessWidget {
  const UserPro({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF1F2A44),
        unselectedItemColor: Colors.white60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              Icon(Icons.arrow_back, color: Colors.black),

              SizedBox(height: 20),

              // Profile Info
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Replace with actual image path
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('R.S Rusiru', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text('Age', style: TextStyle(color: Colors.grey)),
                      Text('Status', style: TextStyle(color: Colors.grey)),
                      Text('NIC', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Full Name
              Text('Full Name', style: TextStyle(color: Colors.grey)),
              Text('Regawan sudarshan Rusiru', style: TextStyle(fontSize: 16)),

              SizedBox(height: 20),

              // Name with initials
              Text('Name with initials', style: TextStyle(color: Colors.grey)),
              Text('R.S Rusiru', style: TextStyle(fontSize: 16)),

              SizedBox(height: 20),

              // Email
              Text('E-mail', style: TextStyle(color: Colors.grey)),
              Text('rusirusudarshan678@gmail.com', style: TextStyle(fontSize: 16, color: Colors.blue)),

              SizedBox(height: 20),

              // Address
              Text('Adress', style: TextStyle(color: Colors.grey)),
              Text('*****************************', style: TextStyle(fontSize: 16)),

              SizedBox(height: 20),

              // Phone number
              Text('Phone number', style: TextStyle(color: Colors.grey)),
              Text('**********', style: TextStyle(fontSize: 16)),

              SizedBox(height: 30),

              // Rating
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: index < 3 ? Colors.black : Colors.black12,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

