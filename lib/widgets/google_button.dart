import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker/constants/colors.dart';
import 'package:gdg_habit_tracker/constants/images.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GoogleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            side: WidgetStatePropertyAll(
                BorderSide(color: AppColors.primaryColor))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 20,
                child: AppImages.google,
              ),
            ),
            Text(
              'Continue with Google',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
