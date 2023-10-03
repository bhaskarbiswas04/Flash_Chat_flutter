import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController controller2;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    //controller creation.
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    controller2 = AnimationController(
        vsync: this, duration: const Duration(seconds: 1), upperBound: 60);

    //Implementation of Curved Controller.
    // animation = CurvedAnimation(parent: controller2, curve: Curves.decelerate);  //Example of curved Animation
    animation = ColorTween(
            begin: const Color(0xFFB0D9B1), end: const Color(0xFF618264))
        .animate(
            controller); //Example of Tween() animation which has two required properties.

    //forwarding the controllers
    controller.forward();
    controller2.forward();

    // animation.addStatusListener((status) {
    //   // if (status == AnimationStatus.completed) {
    //   //   controller2.reverse();
    //   // } else if (status == AnimationStatus.dismissed) {
    //   //   controller2.forward();
    //   // }
    // });

    //Listning to the values of the container.
    controller.addListener(() {
      setState(() {});
      // print(controller.value);
    });

    controller2.addListener(() {
      setState(() {});
      // print(controller2.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: controller2.value,
                    child: const Image(image: AssetImage('images/logo.png')),
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFD0E7D2),
                  ),
                  child: AnimatedTextKit(
                      animatedTexts: [TypewriterAnimatedText('Flash Chat')]),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: const Color(0xFF79AC78),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Log In',
                    style: kWelcomeScreenTextStyle,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: const Color(0xFFB0D9B1),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Register',
                    style: kWelcomeScreenTextStyle,
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
