// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last, avoid_returning_null_for_void
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepPurple,
                    Color.fromARGB(255, 185, 161, 228)
                  ],
                ),
              ),
              height: 350,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   'images/login.png',
                    //   width: 100,
                    //   height: 100,
                    // ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "This is login screen for Codes Soft",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 350,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height:
                                  05), 
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Divider(
                              thickness: 3, 
                              color: Colors.deepPurpleAccent, 
                              indent: 5, 
                              endIndent: 280, 
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Enter Username',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Enter Password',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.deepPurpleAccent,
                          value: true,
                          onChanged: (value) => true,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 35,
            top: 620,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_circle_right),
                iconSize: 65,
                onPressed: () => null,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width / 2 - 105,
          //   top: 700,
          //   child: Row(
          //     children: [
          //       Material(
          //         color: Colors.transparent,
          //         child: InkWell(
          //           onTap: () {},
          //           borderRadius: BorderRadius.circular(15.0),
          //           child: Container(
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: Colors.white,
          //             ),
          //             child: Image.asset(
          //               'images/google.png',
          //               width: 30,
          //               height: 30,
          //             ),
          //             padding: EdgeInsets.all(10.0),
          //           ),
          //         ),
          //       ),
          //       SizedBox(width: 20),
          //       Material(
          //         color: Colors.transparent,
          //         child: InkWell(
          //           onTap: () {},
          //           borderRadius: BorderRadius.circular(15.0),
          //           child: Container(
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: Colors.white,
          //             ),
          //             child: Image.asset(
          //               'images/facebook.png',
          //               width: 30,
          //               height: 30,
          //             ),
          //             padding: EdgeInsets.all(10.0),
          //           ),
          //         ),
          //       ),
          //       SizedBox(width: 20),
          //       Material(
          //         color: Colors.transparent,
          //         child: InkWell(
          //           onTap: () {},
          //           borderRadius: BorderRadius.circular(15.0),
          //           child: Container(
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: Colors.white,
          //             ),
          //             child: Image.asset(
          //               'images/twitter.png',
          //               width: 30,
          //               height: 30,
          //             ),
          //             padding: EdgeInsets.all(10.0),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
