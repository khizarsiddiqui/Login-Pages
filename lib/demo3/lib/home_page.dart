// ignore_for_file: unused_import

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'utils/constants.dart';
import 'package:flutter/material.dart';
import 'components/halfrounded_box.dart';
import 'components/halfrounded_button.dart';
import 'components/custom_button.dart';
import 'components/tasks_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text(
                                "Username 123",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlueAccent,
                                    fontSize: 25),
                              ),
                              Text(
                                "Day",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                              Text(
                                "3rd April 2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blueAccent),
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/250?image=9'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      HalfRoundedButton(
                        text: "Check-out",
                        onPress: () {},
                        containerColor: Colors.transparent,
                        outlineColor: Colors.red,
                        textColor: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Task",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "View All",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    ),
                    icon: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: HalfRounded(
                        height: 0.23,
                        width: 0.8,
                        containerColor: Colors.blueAccent,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Urgent"),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Overdue"),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 0,
                              right: 0,
                              top: 100,
                              child: Container(
                                color: Colors.white.withOpacity(0.5),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.comment,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.blue,
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "What would you like to do?",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: List.generate(
                9,
                (index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: HalfRounded(
                      height: 0.1,
                      width: 0.3,
                      containerColor: Colors.blue,
                      child: Center(
                        child: Icon(Icons.money, size: 30),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pending Requests",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: HalfRounded(
                width: 0.1,
                height: 0.23,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.lightBlueAccent, Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "Travel Expense",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.lightBlueAccent,
                                Colors.lightBlueAccent,
                                Colors.white
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "Draft",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rs.500", // Price text
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "03/04/2024", // Date text
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Attendance Details",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: HalfRounded(
                width: 0.1,
                height: 0.23,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.lightBlueAccent,
                                Colors.white
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "April",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "29 Days",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Container(
                                  width: 3,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                Text(
                                  "0 Days", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.green),
                                ),
                                Spacer(),
                                Container(
                                  width: 3,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                Text(
                                  "0 Days", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.red),
                                ),
                                Spacer(),
                                Container(
                                  width: 3,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                Text(
                                  "0 Days", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.deepOrangeAccent),
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              width: 370,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Container(
                                  width: 5,
                                  height: 5,
                                  color: Colors.green,
                                ),
                                Spacer(),
                                Text(
                                  "Present", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.green),
                                ),
                                Spacer(),
                                Container(
                                  width: 5,
                                  height: 5,
                                  color: Colors.red,
                                ),
                                Spacer(),
                                Text(
                                  "Absent", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.red),
                                ),
                                Spacer(),
                                Container(
                                  width: 5,
                                  height: 5,
                                  color: Colors.deepOrangeAccent,
                                ),
                                Spacer(),
                                Text(
                                  "Day Off", // Date text
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.deepOrangeAccent),
                                ),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Leave Balance",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: HalfRounded(
                width: 0.1,
                height: 0.23,
                child: Center(
                  child: Text(
                    "No Data Available",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Salary Details",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "View All",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    ),
                    icon: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: HalfRounded(
                width: 0.1,
                height: 0.23,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.lightBlueAccent,
                                Colors.white
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "August 2023",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, top: 30.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Credited On", // Date text
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "03/04/2024", // Date text
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rs.10,500", // Price text
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "Work Day", // Date text
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "31", // Date text
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Container(
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey),
                                ),
                              ),
                              child: Text(
                                "View Salary Slip",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            iconList[index],
            size: 28,
            color: isActive ? Colors.blueAccent : Colors.lightBlueAccent,
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
              if (index == 1) {
                _onHomeIconPressed();
              } else if (index == 2) {
                _onTaskIconPressed();
              }
            });
          },
      ),
    );
  }
}
