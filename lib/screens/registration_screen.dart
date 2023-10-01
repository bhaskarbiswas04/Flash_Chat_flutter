import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

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
            Container(
              height: 200.0,
              child: const Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),

            //TODO: Refactor the following two TextField widgets.
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: const InputDecoration(
                hintText: 'Enter your Email',
                hintStyle: TextStyle(color: Color(0xFFD0E7D2), fontSize: 20.0),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 22.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB0D9B1), width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF79AC78), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: const InputDecoration(
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Color(0xFFD0E7D2), fontSize: 20.0),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 22.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB0D9B1), width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF79AC78), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),

            //TODO: Write a widged to re-enter your password and check whether the password matches.

            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Material(
                color: const Color(0xFF79AC78),
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 20.0,
                child: MaterialButton(
                  onPressed: () {
                    //Implement registration functionality.
                  },
                  minWidth: 250.0,
                  height: 45.0,
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color(0xFFD0E7D2),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Material(
                color: const Color(0xFF618264),
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 20.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  minWidth: 250.0,
                  height: 45.0,
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      color: Color(0xFFD0E7D2),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
