import 'package:demo3/components/order_card.dart';
import 'package:flutter/material.dart';

import 'components/filter_order.dart';
import 'create_order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool _showBottomSheet = false;

  // Method to toggle the visibility of the bottom sheet
  void _toggleBottomSheet() {
    setState(() {
      _showBottomSheet = !_showBottomSheet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
        actions: [
          IconButton(
            onPressed: () {
              _toggleBottomSheet();
            },
            icon: Icon(Icons.filter_list_outlined),
          )
        ],
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
      bottomSheet: _showBottomSheet ? FilterOrder() : null,
      floatingActionButton: _showBottomSheet
          ? null
          : FloatingActionButton(
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
