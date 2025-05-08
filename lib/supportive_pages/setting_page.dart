import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jobflex/widget/constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: JPrimaryLightColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF233A66)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 20, color: Color(0xFF233A66)),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: JPrimaryLightColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),
        ],
      ),
      backgroundColor: JPrimaryColor,
    );
  }
}
