import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),

            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'Enter your Email',
                )),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'Enter your Password',
                )),

            //TODO: Write a widged to re-enter your password and check whether the password matches.

            const SizedBox(
              height: 20.0,
            ),

            RoundedButton(
              bgColor: const Color(0xFF79AC78),
              title: 'Sign Up',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
