import 'package:demo3/order_details.dart';
import 'package:demo3/visit_details.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'halfrounded_box.dart';

class VisitCard extends StatelessWidget {
  final String? statusText;
  final Color? color;

  VisitCard({
    Key? key,
    this.statusText,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VisitDetails(),
          ),
        );
      },
      child: HalfRounded(
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
                  Text(
                    "VISIT-00",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: color ?? Colors.lightBlueAccent,
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
                        statusText ?? "Undefined",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "01-02-2024 - 12:24:43",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Customer Name",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Khizar",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
