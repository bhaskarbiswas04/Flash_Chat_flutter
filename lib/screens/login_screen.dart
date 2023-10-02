import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
            const SizedBox(
              height: 48.0,
            ),
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
              height: 8.0,
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
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 16.0),
              child: Material(
                color: const Color(0xFF79AC78),
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 20.0,
                child: MaterialButton(
                  onPressed: () {
                    //Implement Login functionality.
                    Navigator.pushNamed(context, '/chat');
                  },
                  minWidth: 250.0,
                  height: 45.0,
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Color(0xFFD0E7D2),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
