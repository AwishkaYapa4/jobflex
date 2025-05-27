import 'package:flutter/material.dart';
import 'package:jobflex/widget/footer.dart';




class UserPro extends StatelessWidget {
  const UserPro({super.key});

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
                backgroundImage: AssetImage('img/User.jpg'), // Replace with your image
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
              Text('R.S Rusiru',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2A44))),
              SizedBox(height: 4),
              Text('Age', style: TextStyle(color: Color(0xFFB9B9B9))),
              Text('Status', style: TextStyle(color: Color(0xFFB9B9B9))),
              Text('NIC', style: TextStyle(color: Color(0xFFB9B9B9))),
            ],

          )
        ],
      ),
      SizedBox(height: 60),
      // Full Name
              Text('Full Name', style: TextStyle(color: Color(0xFF2D4C82))),
              Text('Regawan sudarshan Rusiru',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF233A66))),
              SizedBox(height: 20),

              // Name with initials
              Text('Name with initials', style: TextStyle(color: Color(0xFF2D4C82))),
              Text('R.S Rusiru',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF233A66))),
              SizedBox(height: 20),

              // Email
              Text('E-mail', style: TextStyle(color:Color(0xFF2D4C82))),
              Text(
                'rusirusudarshan678@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF233A66),
                    decoration: TextDecoration.underline),
              ),
              SizedBox(height: 20),

              // Address
              Text('Adress', style: TextStyle(color: Color(0xFF2D4C82))),
              Text('No 12, Galle Road, Colombo',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF233A66))),
              SizedBox(height: 20),

              // Phone
              Text('Phone number', style: TextStyle(color: Color(0xFF2D4C82))),
              Text('077 123 4567',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xFF233A66))),

              SizedBox(height: 30),

              // Star rating (Centered)
Center(
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Color(0xFFA4BBE4)),
      Icon(Icons.star, color: Color(0xFFA4BBE4)),
    ],
  ),
),

    ],
  ),
                
              )
              
            ],
          ),
          backgroundColor: Color(0xFF233A66),
           bottomNavigationBar: const Footer(),
    
        );
      }
    }