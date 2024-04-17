import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'halfrounded_box.dart';

class TransactionCard extends StatelessWidget {
  final String? statusText;
  final Color? color;
  final String? date;

  TransactionCard({
    Key? key,
    this.statusText,
    this.color,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HalfRounded(
      width: 2,
      height: 0.24,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date!,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                InkWell(
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
                    statusText ?? "Undefined",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 2, 91, 163),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Debit",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Rs.2,500",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Credit",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Rs.3,000",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Rs.100",
                      style: TextStyle(color: color),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
