import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'halfrounded_box.dart';

class ExpenseCard extends StatelessWidget {
  final String statusText;
  final String priceList;
  final String centerText;
  final String expenseText;
  final String expenseList;

  ExpenseCard({
    Key? key,
    required this.statusText,
    required this.priceList,
    required this.centerText,
    required this.expenseText,
    required this.expenseList,
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
                    color: Color.fromARGB(255, 168, 97, 181),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Expense Type: $expenseText",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                    child: Text(
                      expenseText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
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
              priceList,
              style: TextStyle(color: Color.fromARGB(255, 0, 73, 132)),
            ),
            Text(
              centerText,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              expenseList,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
