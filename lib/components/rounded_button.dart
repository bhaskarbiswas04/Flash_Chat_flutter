import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.bgColor,
      required this.title,
      required this.onPress});

  final Color bgColor;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 20.0,
        color: bgColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: kWelcomeScreenTextStyle,
          ),
        ),
      ),
    );
  }
}
