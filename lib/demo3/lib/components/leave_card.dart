import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'halfrounded_box.dart';

class LeaveCard extends StatelessWidget {
  final String statusText;
  final String centerText;
  final String leaveText;
  final String usersList;

  LeaveCard({
    Key? key,
    required this.statusText,
    required this.centerText,
    required this.leaveText,
    required this.usersList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HalfRounded(
      width: 2,
      height: 0.25,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Leave Status: $leaveText",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                    child: Text(
                      leaveText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Status: $statusText",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                    child: Text(
                      statusText,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              centerText,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              usersList,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
