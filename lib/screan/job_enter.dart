import 'package:flutter/material.dart';

class JobEnterPage extends StatefulWidget {
  const JobEnterPage({super.key});

  @override
  State<JobEnterPage> createState() => _JobEnterPageState();
}

class _JobEnterPageState extends State<JobEnterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2FB),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: Colors.blueGrey),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Enter your Service/Job',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),

            // Form
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildField('Job Title', jobTitleController),
                      _buildField('Category', categoryController),
                      _buildField('Skills', skillsController),
                      _buildField('Location', locationController),
                      _buildField('E-mail', emailController),
                      _buildField('Contact', contactController),
                      _buildField('Description', descriptionController, maxLines: 4),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('Submit', () {
                            if (_formKey.currentState!.validate()) {
                              // You can handle form submission here
                            }
                          }),
                          _buildButton('Cancel', () {
                            Navigator.pop(context);
                          }),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    
    );
  }

  // Widget for text fields
  Widget _buildField(String label, TextEditingController controller, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: label,
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // Widget for submit and cancel buttons
  Widget _buildButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1E3354),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(label),
    );
  }
}
