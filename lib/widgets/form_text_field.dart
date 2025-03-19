import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  const FormTextField(
      {super.key, required this.label, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        obscureText: obscureText, // For password input
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          // Adds a border
        ),
        cursorErrorColor: Colors.red,
      ),
    );
  }
}
