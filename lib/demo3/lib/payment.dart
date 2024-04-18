import 'package:demo3/add_payment.dart';
import 'package:flutter/material.dart';
import 'components/filter_payment.dart';
import 'components/payment_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        title: Text("Payment Entries"),
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
              PaymentCard(
                color: Colors.red,
                statusText: "Cancelled",
              ),
              SizedBox(
                height: 20,
              ),
              PaymentCard(
                color: Colors.orangeAccent,
                statusText: "Pending",
              ),
              SizedBox(
                height: 20,
              ),
              PaymentCard(
                color: Colors.green,
                statusText: "Approved",
              ),
              SizedBox(
                height: 20,
              ),
              PaymentCard(
                color: Colors.red,
                statusText: "Cancelled",
              ),
              SizedBox(
                height: 20,
              ),
              PaymentCard(
                color: Colors.orangeAccent,
                statusText: "Pending",
              ),
              SizedBox(
                height: 20,
              ),
              PaymentCard(
                color: Colors.green,
                statusText: "Approved",
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _showBottomSheet ? FilterPayment() : null,
      floatingActionButton: _showBottomSheet
          ? null
          : FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPayment(),
                  ),
                );
              },
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(
                Icons.add_outlined,
                color: Colors.white,
              ),
            ),
    );
  }
}
