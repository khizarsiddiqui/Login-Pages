// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dashboard.dart';
import 'utils/constants2.dart';
import 'components/login_textfield2.dart';
import 'components/signin_button2.dart';

class Login3 extends StatefulWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  bool _isChecked = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h * 1.0,
          decoration: containerGradient(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.10),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                decoration: BoxDecoration(
                  color: insideColor2,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: insideColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  height: h * 0.65,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      LoginTextField(myController: usernameController),
                      // SizedBox(height: h * 0.03),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      LoginTextField(
                          isPass: true, myController: passwordController),
                      // SizedBox(height: h * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 2, 128, 186)),
                          ),
                        ],
                      ),
                      // SizedBox(height: h * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                fillColor: MaterialStatePropertyAll(
                                    Colors.lightBlueAccent),
                                checkColor: Colors.black,
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(
                                    () {
                                      _isChecked = value ?? false;
                                    },
                                  );
                                },
                              ),
                              Text('Remember Me'),
                            ],
                          ),
                          SigninButton(
                            text: 'Sign In',
                            onPress: () {
                              Fluttertoast.showToast(
                                  msg: "Sign In Successful",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontSize: 16);
                              Future.delayed(Duration(seconds: 1), () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => DashboardScreen(),
                                  ),
                                );
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(color: dividerColor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
