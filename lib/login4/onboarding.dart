import 'package:demo1/components/common_text.dart';
import 'package:demo1/login4/signup.dart';
import 'package:flutter/material.dart';
import '/components/long_login.dart';
import 'signin.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.transparent, Colors.white],
              ).createShader(bounds);
            },
            child: Image.asset(
              'images/plant2.jpg',
              height: 500,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            blendMode: BlendMode.screen,
          ),
          LongLogin(
              text: "Login",
              containerColor: Colors.black,
              textColor: Colors.white,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              }),
          SizedBox(height: 10),
          LongLogin(
              text: "Register",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              }),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: CommonText(
              text: "Continue as a guest",
              color: Colors.lightBlueAccent,
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}