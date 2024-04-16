import 'package:flutter/material.dart';

import 'components/comment_textfield.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SAL-ORD-",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 4),
              Text(
                "00-112-122",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expected Delivery",
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
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "23-04-2024",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "5",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Rs.5,000",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                "Created by",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                "Khizar",
                style: TextStyle(color: Colors.black),
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
                "ABC",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Annual Billing",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Total Unpaid",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Rs.65,77,222",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    "Rs.1,10,500",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Text(
                "Tax & Discount",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Tax: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.1,200",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub Total: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.6,200",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.300",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total: ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Rs.5,900",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(),
              SizedBox(height: 4),
              Text(
                "Comments",
                style: TextStyle(color: Colors.black),
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
