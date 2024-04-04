// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:demo3/home_page.dart';
import 'package:demo3/task_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _onHomeIconPressed() {
    Navigator.pushNamed(context, '/home');
  }

  void _onTaskIconPressed() {
    Navigator.pushNamed(context, '/tasks');
  }

  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.task_outlined,
    Icons.dock_outlined,
    Icons.man,
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Khizar',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: HomePage(),
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.lightBlueAccent,
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(40),
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: AnimatedBottomNavigationBar(
        //   icons: iconList,
        //   activeIndex: _bottomNavIndex,
        //   gapLocation: GapLocation.center,
        //   notchSmoothness: NotchSmoothness.verySmoothEdge,
        //   leftCornerRadius: 32,
        //   rightCornerRadius: 32,
        //   onTap: (index) {
        //     setState(() {
        //       _bottomNavIndex = index;
        //       if (index == 1) {
        //         _onHomeIconPressed();
        //       } else if (index == 2) {
        //         _onTaskIconPressed();
        //       }
        //     });
        //   },
        // ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/tasks': (context) => TaskPage(),
      },
    );
  }
}
