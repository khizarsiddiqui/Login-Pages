import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../payment_details.dart';
import 'halfrounded_box.dart';

class PaymentCard extends StatelessWidget {
  final String? statusText;
  final Color? color;

  PaymentCard({
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
            builder: (context) => PaymentDetails(),
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
                    "ACC-PAY-20",
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
                "Khizar",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Pay: 1500.0",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
