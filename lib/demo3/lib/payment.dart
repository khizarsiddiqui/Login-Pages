import 'package:demo3/add_payment.dart';
import 'package:flutter/material.dart';
import 'components/payment_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Entries"),
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
      floatingActionButton: FloatingActionButton(
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
