import 'package:flutter/material.dart';

class PromoAdmin extends StatelessWidget {
  const PromoAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Manage / admin'),
        centerTitle: true,
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Table(
                  border: TableBorder.symmetric(
                    inside: BorderSide(color: Colors.grey.shade300),
                  ),
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
                      decoration: BoxDecoration(color: Colors.grey.shade100),
                      children: [
                        TableCell(
                          child: Center(
                            child: Text(
                              'ID',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Job title',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Email',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Category',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Edit',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Delete',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(child: Center(child: Text('1'))),
                        TableCell(child: Center(child: Text('Max Mendes'))),
                        TableCell(child: Center(child: Text('max@gmail.com'))),
                        TableCell(child: Center(child: Text(''))),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.edit, color: Colors.blue),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(child: Center(child: Text('2'))),
                        TableCell(child: Center(child: Text('Mark Hugo'))),
                        TableCell(child: Center(child: Text('mark@gmail.com'))),
                        TableCell(child: Center(child: Text(''))),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.edit, color: Colors.blue),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(child: Center(child: Text('3'))),
                        TableCell(child: Center(child: Text('Smith'))),
                        TableCell(
                          child: Center(child: Text('smith@gmail.com')),
                        ),
                        TableCell(child: Center(child: Text(''))),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.edit, color: Colors.blue),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(child: Center(child: Text('4'))),
                        TableCell(child: Center(child: Text('Kendrick'))),
                        TableCell(
                          child: Center(child: Text('kendrick@gmail.com')),
                        ),
                        TableCell(child: Center(child: Text(''))),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.edit, color: Colors.blue),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 250,
        decoration: const BoxDecoration(
          color: Color(0xFF1A2A4B),
          borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        ),
        child: Center(child: Image.asset('Icons/Logo.png', height: 150)),
      ),
      backgroundColor: Colors.white,
    );
  }
}
