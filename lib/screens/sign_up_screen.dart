import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker/constants/images.dart';
import 'package:gdg_habit_tracker/routes/route.dart';
import 'package:gdg_habit_tracker/widgets/button_fill.dart';
import 'package:gdg_habit_tracker/widgets/form_text_field.dart';
import 'package:gdg_habit_tracker/widgets/google_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: double.infinity,
                    child: AppImages.signUp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: 250,
                    child: AppImages.signUpText,
                  ),
                ),
              ],
            ),

            Column(
              children: [
                FormTextField(label: 'Email'),
                FormTextField(
                  label: 'Password',
                  obscureText: true,
                ),
                FormTextField(
                  label: 'Confirm Password',
                  obscureText: true,
                )
              ],
            ),

            //
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                children: [
                  //Button
                  ButtonFill(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.signin),
                      text: 'Register'),

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
                              'Already have an account?',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Get in now!',
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
