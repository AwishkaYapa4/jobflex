import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';

class PromotorProfile extends StatelessWidget {
  const PromotorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
<<<<<<< HEAD
<<<<<<< HEAD
          Container(
            height: 240,
            decoration: BoxDecoration(color: JPrimaryColor),
          ),
          Stack(
            children: [
=======
          Stack(
            children: [
=======
          Stack(
            children: [
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF4F7FE),
                   borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
   
  ),

              ),
<<<<<<< HEAD
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
              Positioned(
                top: 100,
                left: 24,
                right: 24,
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
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
                        Text('R.S Rusiru',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1F2A44))),
                        SizedBox(height: 4),
                        Text('Age', style: TextStyle(color: Colors.grey)),
                        Text('Status', style: TextStyle(color: Colors.grey)),
                        Text('NIC', style: TextStyle(color: Colors.grey)),
<<<<<<< HEAD
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
                  SizedBox(height: 10),

                  Text('Full Name', style: TextStyle(color: Colors.grey)),
                  Text('Regawan sudarshan Rusiru', style: TextStyle(fontSize: 16)),

                  SizedBox(height: 20),

                  Text('Name with initials', style: TextStyle(color: Colors.grey)),
                  Text('R.S Rusiru', style: TextStyle(fontSize: 16)),

                  SizedBox(height: 20),

                  Text('E-mail', style: TextStyle(color: Colors.grey)),
                  Text('rusirusudarshan678@gmail.com',
                      style: TextStyle(fontSize: 16, color: Colors.blue, decoration: TextDecoration.underline)),

                  SizedBox(height: 20),

                  Text('Adress', style: TextStyle(color: Colors.grey)),
                  Text('*******************************', style: TextStyle(fontSize: 16)),

                  SizedBox(height: 20),

                  Text('Phone number', style: TextStyle(color: Colors.grey)),
                  Text('077-1234556', style: TextStyle(fontSize: 16)),

                  SizedBox(height: 30),

                  // Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: index < 3 ? Colors.black : Colors.black12,
                      );
                    }),
<<<<<<< HEAD
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
<<<<<<< HEAD

      backgroundColor: JPrimaryLightColor,
=======
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF1F2A44),
        unselectedItemColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
      ),
       backgroundColor: Color(0xFFF4F7FE),
<<<<<<< HEAD
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
=======
>>>>>>> f56c0577cd0791076766487f8178f8ceb9387613
    );
  }
} 