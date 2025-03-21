import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker/constants/images.dart';
import 'package:gdg_habit_tracker/routes/route.dart';
import 'package:gdg_habit_tracker/widgets/button_fill.dart';
import 'package:gdg_habit_tracker/widgets/form_text_field.dart';
import 'package:gdg_habit_tracker/widgets/google_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: AppImages.signIn,
                ),
                SizedBox(
                  width: 300,
                  child: AppImages.signInText,
                ),
              ],
            ),
            Column(
              children: [
                FormTextField(label: 'Email'),
                FormTextField(
                  label: 'Password',
                  obscureText: true,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                children: [
                  //Button
                  ButtonFill(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.signin),
                      text: 'Sign In'),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'or',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  GoogleButton(onPressed: () {}),

                  //Register
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, AppRoutes.signup),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Register now!',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
