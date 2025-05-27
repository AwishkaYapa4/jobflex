import 'package:flutter/material.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/widget/constants.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final int _currentIndex = 0;

  String? selectedUser;
  final List<String> userList = ['Regawan Sudarshan', 'Nimali Perera', 'John Silva'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F6FF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF233A66)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Payment', style: TextStyle(color: Color(0xFF233A66))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '• Please complete your payment via bank transfer or mobile payment. Once done, upload a clear photo or screenshot of your payment receipt below.',
              style: TextStyle(fontSize: 14, color: Color(0xFF233A66)),
            ),
            const SizedBox(height: 20),

            // Dropdown for selecting user
            const Text('Select User', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFDDE6FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedUser,
                  hint: const Text('Select user'),
                  isExpanded: true,
                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xFF233A66)),
                  items: userList.map((user) {
                    return DropdownMenuItem<String>(
                      value: user,
                      child: Text(user),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedUser = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            _buildTextField('Account Holder Name'),
            const SizedBox(height: 15),
            _buildTextField('Bank Name'),
            const SizedBox(height: 15),
            _buildTextField('Account Number'),
            const SizedBox(height: 15),
            _buildTextField('Reference Note', hint: 'e.g., "Use your User ID as the reference"'),
            const SizedBox(height: 15),
            _buildUploadBox(),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }

  Widget _buildTextField(String label, {String? hint}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hint ?? '',
            filled: true,
            fillColor: const Color(0xFFDDE6FF),
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadBox() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFB9B9B9),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFB9B9B9)),
      ),
      child: const Center(
        child: Text("Upload Receipt", style: TextStyle(color: Color(0xFF233A66))),
      ),
    );
  }
}
