import 'package:demo3/components/order_card.dart';
import 'package:flutter/material.dart';

import 'create_order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              OrderCard(
                color: Color.fromARGB(255, 5, 143, 44),
                statusText: "Approved",
              ),
              SizedBox(
                height: 20,
              ),
              OrderCard(
                color: const Color.fromARGB(255, 255, 203, 59),
                statusText: "Pending",
              ),
              SizedBox(
                height: 20,
              ),
              OrderCard(
                color: Color.fromARGB(255, 5, 143, 44),
                statusText: "Approved",
              ),
              SizedBox(
                height: 20,
              ),
              OrderCard(
                color: const Color.fromARGB(255, 255, 203, 59),
                statusText: "Pending",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateOrder(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
