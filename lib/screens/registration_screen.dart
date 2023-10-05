// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison

import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth =
      FirebaseAuth.instance; //Creating an instance of the class FirebaseAuth.

  bool showSpinner = false;

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        color: const Color(0xFF79AC78),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Flexible(
                child: Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 200.0,
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),

              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Enter your Email',
                  )),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                  obscureText: true, //Make the text protected.
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
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
                onPress: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }

                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
