import 'package:flutter/material.dart';
import 'package:jobflex/widget/footer.dart';
import 'package:jobflex/widget/constants.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F6FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F6FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color :Color(0xFF233A66)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Payment', style: TextStyle(color: Color(0xFF233A66))),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '• Please complete your payment via bank transfer or mobile payment. Once done, upload a clear photo or screenshot of your payment receipt below.',
              style: TextStyle(fontSize: 14, color: Color(0xFF233A66)),
            ),
            SizedBox(height: 20),
            _buildTextField('Account Holder Name'),
            SizedBox(height: 15),
            _buildTextField('Bank Name'),
            SizedBox(height: 15),
            _buildTextField('Account Number'),
            SizedBox(height: 15),
            _buildTextField('Reference Note', hint: 'e.g., "Use your User ID as the reference"'),
            SizedBox(height: 15),
            _buildUploadBox(),
            SizedBox(height: 30),
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
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hint ?? '',
            filled: true,
            fillColor: Color(0xFFDDE6FF),
            contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
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
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFB9B9B9),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFB9B9B9)),
      ),
      child: Center(
        child: Text("Upload Receipt", style: TextStyle(color: Color(0xFF233A66))),
      ),
    );
  }
}
