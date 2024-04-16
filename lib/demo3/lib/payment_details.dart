import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'components/comment_textfield.dart';
import 'components/common_text.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Details"),
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
                    "ACC-PAY-20",
                    style: TextStyle(color: Colors.blue),
                  ),
                   Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
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
                        "Cancelled",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "2024-03-09",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Type",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Party Type",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Mode Of Payment",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pay",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Supplier",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Bank Draft",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                "Company Name",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                "Project X",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Party Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                  Text(
                    "Paid Amount",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Test",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 131,
                  ),
                  Text(
                    "Rs.200",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Party From",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 78,
                  ),
                  Text(
                    "Paid To",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Cash-PCW",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Creditors-PCW",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    "Reference No.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    "Reference Date",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Tugh",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 122,
                  ),
                  Text(
                    "2024-03-29",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reference",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Outstanding",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Allocated",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Purchase Invoice \nACC-PINV-20",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 40,),
                  Text(
                    "Rs.1500",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 140,),
                  Text(
                    "22",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.blue,
                    ),
                  ),
                  CommonText(
                    text: "Activity",
                    color: Colors.blue,
                    fontSize: 16,
                    weight: FontWeight.w500,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              CommentTextField(
                controller: commentController,
                hint: "Comments here...",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
