import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'update_visit.dart';

class VisitDetails extends StatefulWidget {
  const VisitDetails({super.key});

  @override
  State<VisitDetails> createState() => _VisitDetailsState();
}

class _VisitDetailsState extends State<VisitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visit Details"),
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateVisit(),
                      ),
                    ),
                  },
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "VISIT-000",
                    style: TextStyle(color: Colors.blue),
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
                            msg: "Status",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            textColor: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize: 16);
                      },
                      child: Text(
                        "Order Requirement",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "16-04-2024 12:23:22",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Text(
                "Customer Name",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                "Khizar Hussain Siddiqui",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
              Text(
                "Employee",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                "HR-EMP-00002",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
              Text(
                "Description",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                "ABCDEFGH",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
