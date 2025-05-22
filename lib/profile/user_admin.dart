import 'package:flutter/material.dart';

class UserAdmin extends StatelessWidget {
  const UserAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
      ),
    );
  }
}
