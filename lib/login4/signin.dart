// ignore_for_file: must_be_immutable, camel_case_types

import 'package:demo1/components/common_text.dart';
import 'package:demo1/components/socialmedia_button.dart';
import 'package:demo1/components/login_textfield.dart';
import 'package:demo1/login4/signup.dart';
import 'package:flutter/material.dart';
import '/components/long_login.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: h * 1.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CommonText(
                  text: "Welcome Back! Glad \n to see you, Again!",
                  fontSize: 20,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    LoginTextField(
                      myController: usernameController,
                      hintText: "Enter your email",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextField(
                      myController: passwordController,
                      isPass: true,
                      hintText: "Enter your password",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {},
                  child: CommonText(
                    text: "Forgot Password?",
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LongLogin(
                text: "Login",
                textColor: Colors.white,
                containerColor: Colors.black,
                onPress: () => {},
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.5,
                      width: w * 0.34,
                      color: Colors.black,
                    ),
                    CommonText(
                      text: "Or Login with",
                    ),
                    Container(
                      height: 0.5,
                      width: w * 0.34,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMedia(image: "images/facebook.png"),
                  SocialMedia(image: "images/google.png"),
                  SocialMedia(image: "images/apple.png"),
                ],
              ),
              SizedBox(height: h * 0.17),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    text: "Don't have an account?",
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: CommonText(
                      text: "Register Now",
                      color: Colors.lightBlueAccent,
                      weight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
