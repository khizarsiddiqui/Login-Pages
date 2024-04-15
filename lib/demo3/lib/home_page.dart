// ignore_for_file: unused_import, unnecessary_statements

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'payroll.dart';
import 'payroll_summary.dart';
import 'task_page.dart';
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
  final List<IconData> _icons = [
    Icons.money,
    Icons.shopping_cart,
    Icons.airplane_ticket,
    Icons.camera,
    Icons.book,
    Icons.music_note,
    Icons.movie,
    Icons.restaurant,
    Icons.directions_bike,
  ];

  final List _pages = [
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
                                    fontSize: 20),
                              ),
                              Text(
                                "Username 123",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Day",
                                style: TextStyle(
                                    fontSize: 15),
                              ),
                              Text(
                                "3rd April 2024",
                                style: TextStyle(
                                    fontSize: 15),
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
                        text: "Check-In",
                        onPress: () {
                          Fluttertoast.showToast(
                              msg: "Check-In Successful",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              textColor: Colors.green,
                              backgroundColor: Colors.white,
                              fontSize: 16);
                        },
                        containerColor: Colors.transparent,
                        outlineColor: Colors.green,
                        textColor: Colors.green,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TaskPage()),
                      );
                    },
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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: w * 0.9,
                      height: h * 0.295,
                      child: TaskCard(
                        currentstatus: "High",
                        text1: "Project-3",
                        text2: "finished",
                        text3: "25-09-2023",
                        marginSides: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: w * 0.9,
                      height: h * 0.295,
                      child: TaskCard(
                        currentstatus: "High",
                        text1: "Project-3",
                        text2: "finished",
                        text3: "25-09-2023",
                        marginSides: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: w * 0.9,
                      height: h * 0.295,
                      child: TaskCard(
                        currentstatus: "High",
                        text1: "Project-3",
                        text2: "finished",
                        text3: "25-09-2023",
                        marginSides: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: w * 0.9,
                      height: h * 0.295,
                      child: TaskCard(
                        currentstatus: "High",
                        text1: "Project-3",
                        text2: "finished",
                        text3: "25-09-2023",
                        marginSides: 0,
                      ),
                    ),
                  ),
                ],
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
                    child: InkWell(
                      onTap: () {
                        print(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => _pages[index],
                          ),
                        );
                      },
                      child: HalfRounded(
                        height: 0.1,
                        width: 0.3,
                        containerColor: Colors.blue,
                        child: Center(
                          child: Icon(_icons[index], size: 30),
                        ),
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
                              colors: [Colors.blue, Colors.lightBlueAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "Travel Expense (In Progress)",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontSize: 16);
                            },
                            child: Text(
                              "Travel Expense",
                              style: TextStyle(color: Colors.white),
                            ),
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
                          child: InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "Draft (In Progress)",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontSize: 16);
                            },
                            child: Text(
                              "Draft",
                              style: TextStyle(color: Colors.white),
                            ),
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
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "Month Of the Year",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontSize: 16);
                            },
                            child: Text(
                              "April",
                              style: TextStyle(color: Colors.white),
                            ),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PayrollScreen(),
                        ),
                      );
                    },
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
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: InkWell(
                            onTap: () {
                              Fluttertoast.showToast(
                                  msg: "Month & Year",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  fontSize: 16);
                            },
                            child: Text(
                              "August 2023",
                              style: TextStyle(color: Colors.white),
                            ),
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
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: double.infinity,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PayrollSummary()),
                                  );
                                },
                                label: Text(
                                  "View Salary Slip",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                icon: Icon(Icons.arrow_forward,
                                    color: Colors.transparent),
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
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
