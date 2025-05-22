import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: UserAdminScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class UserAdminScreen extends StatelessWidget {
  const UserAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserAdmin();
  }
}

// Move UserAdmin to top-level (outside of UserAdminScreen)
class UserAdmin extends StatelessWidget {
  const UserAdmin({Key? key}) : super(key: key);

  // Example user data
  static const List<Map<String, String>> userData = [
    {
      'id': '1',
      'job': 'Engineer',
      'email': 'user1@example.com',
      'contact': '1234567890',
    },
    {
      'id': '2',
      'job': 'Designer',
      'email': 'user2@example.com',
      'contact': '0987654321',
    },
    // Add more users as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7EBF0),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1D2D5D),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Center(
              child: Text(
                'User/Admin',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF1D2D5D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5), // light background color
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Table(
                  border: TableBorder.all(color: Colors.grey),
                  columnWidths: const {
                    0: FixedColumnWidth(20),
                    1: FixedColumnWidth(70),
                    2: FixedColumnWidth(35),
                    3: FixedColumnWidth(50),
                    4: FixedColumnWidth(30),
                    5: FixedColumnWidth(35),
                  },
                  children: [
                    const TableRow(
                      decoration: BoxDecoration(color: Color(0xFFD3D3D3)),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'ID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Job',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Del',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (var user in userData)
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              user['id'] ?? '',
                              style: const TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              user['job'] ?? '',
                              style: const TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              user['email'] ?? '',
                              style: const TextStyle(fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              user['contact'] ?? '',
                              style: const TextStyle(fontSize: 10),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.edit,
                              size: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.delete,
                              size: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 95),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.asset(
                'assets/jobflex_logo.png',
                width: double.infinity,
                height: 128,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
