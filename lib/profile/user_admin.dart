import 'package:flutter/material.dart';

<<<<<<< HEAD
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

  final List<Map<String, String>> userData = const [
    {
      'id': '1',
      'job': 'Max Mendes',
      'email': 'max@gmail.com',
      'contact': '3567',
    },
    {
      'id': '2',
      'job': 'Mark Hugo',
      'email': 'mark@gmail.com',
      'contact': '6437',
    },
    {'id': '3', 'job': 'Smith', 'email': 'smith@gmail.com', 'contact': '8654'},
    {
      'id': '4',
      'job': 'Kendrick',
      'email': 'kendrick@gmail.com',
      'contact': '8967',
    },
  ];
=======
class UserAdmin extends StatelessWidget {
  const UserAdmin({Key? key}) : super(key: key);
>>>>>>> ffe6ddff33183fad672d4e46781433a32016a08d

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
      appBar: AppBar(title: const Text('User/Admin'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(),
            columnWidths: const {
              0: FixedColumnWidth(50),
              1: FixedColumnWidth(100),
              2: FixedColumnWidth(150),
              3: FixedColumnWidth(80),
              4: FixedColumnWidth(50),
              5: FixedColumnWidth(50),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: const BoxDecoration(color: Colors.grey),
                children: [
                  TableCell(child: Center(child: Text('ID'))),
                  TableCell(child: Center(child: Text('Job title'))),
                  TableCell(child: Center(child: Text('Email'))),
                  TableCell(child: Center(child: Text('Contact'))),
                  TableCell(child: Center(child: Text('Edit'))),
                  TableCell(child: Center(child: Text('Delete'))),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('1'))),
                  TableCell(child: Center(child: Text('Max Mendes'))),
                  TableCell(child: Center(child: Text('max@gmail.com'))),
                  TableCell(child: Center(child: Text('3567'))),
                  TableCell(child: Center(child: Icon(Icons.edit))),
                  TableCell(
                    child: Center(child: Icon(Icons.delete, color: Colors.red)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('2'))),
                  TableCell(child: Center(child: Text('Mark Hugo'))),
                  TableCell(child: Center(child: Text('mark@gmail.com'))),
                  TableCell(child: Center(child: Text('6437'))),
                  TableCell(child: Center(child: Icon(Icons.edit))),
                  TableCell(
                    child: Center(child: Icon(Icons.delete, color: Colors.red)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('3'))),
                  TableCell(child: Center(child: Text('Smith'))),
                  TableCell(child: Center(child: Text('smith@gmail.com'))),
                  TableCell(child: Center(child: Text('8654'))),
                  TableCell(child: Center(child: Icon(Icons.edit))),
                  TableCell(
                    child: Center(child: Icon(Icons.delete, color: Colors.red)),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('4'))),
                  TableCell(child: Center(child: Text('Kendrick'))),
                  TableCell(child: Center(child: Text('kendrick@gmail.com'))),
                  TableCell(child: Center(child: Text('8967'))),
                  TableCell(child: Center(child: Icon(Icons.edit))),
                  TableCell(
                    child: Center(child: Icon(Icons.delete, color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 300,
        decoration: const BoxDecoration(
          color: Color(0xFF1A2A4B),
          borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        ),
        child: Center(
          child: Image.asset(
            'Icons/Logo.png',
            // Replace with your image path
            height: 180,
          ),
>>>>>>> ffe6ddff33183fad672d4e46781433a32016a08d
        ),
      ),
    );
  }
}
