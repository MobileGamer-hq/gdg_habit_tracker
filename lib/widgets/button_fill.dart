import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker/routes/route.dart';

class ButtonFill extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonFill({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
