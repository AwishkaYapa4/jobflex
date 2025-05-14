import 'package:flutter/material.dart';

// Define the JPrimaryLightColor constant


class UserPro extends StatelessWidget {
  const UserPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              SizedBox(height: 20),
              Container(
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
              padding: const EdgeInsets.all(20),
              
        
                child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
   
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('R.S Rusiru',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1F2A44))),
                        SizedBox(height: 4),
                        Text('Age', style: TextStyle(color: Colors.grey)),
                        Text('Status', style: TextStyle(color: Colors.grey)),
                        Text('NIC', style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
                
                
              )
              
            ],
          ),
          backgroundColor: Colors.white,
    
        );
      }
    }