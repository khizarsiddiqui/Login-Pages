// ignore_for_file: must_be_immutable, camel_case_types

import 'package:demo1/components/common_text.dart';
import 'package:demo1/components/socialmedia_button.dart';
import 'package:demo1/components/login_textfield.dart';
import 'package:demo1/login4/signin.dart';
import 'package:flutter/material.dart';
import '/components/long_login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  text: "Hello! Register to get \n started",
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
                      hintText: "Username",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextField(
                      myController: usernameController,
                      hintText: "Email",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextField(
                        myController: passwordController,
                        hintText: "Password",
                        isPass: true),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextField(
                        myController: passwordController,
                        hintText: "Confirm Password",
                        isPass: true),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LongLogin(
                text: "Register",
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
                      height: 0.4,
                      width: w * 0.30,
                      color: Colors.black,
                    ),
                    CommonText(
                      text: "Or Register with",
                    ),
                    Container(
                      height: 0.4,
                      width: w * 0.30,
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
              SizedBox(height: h * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    text: "Already have an account?",
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: CommonText(
                      text: "Login Now",
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
