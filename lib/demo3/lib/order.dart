import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'components/halfrounded_box.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            HalfRounded(
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
                          "SAL-ORD-",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 5, 143, 44),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "Aproved",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "01-02-2024",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Customer Name",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Items",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Amount",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Khizar",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "1.0",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Rs.100",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            HalfRounded(
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
                          "SAL-ORD-",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 203, 59),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "01-02-2024",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Customer Name",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Items",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Amount",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Khizar",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "1.0",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Rs.100",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
