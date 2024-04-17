import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'components/transaction_card.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transactions"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TransactionCard(
                date: "02-02-2024",
                color: Color.fromARGB(255, 5, 143, 44),
                statusText: "Opening",
              ),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                date: "02-04-2024",
                color: Colors.red,
                statusText: "Total",
              ),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                date: "12-01-2024",
                color: Color.fromARGB(255, 5, 143, 44),
                statusText: "Opening",
              ),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                date: "26-03-2024",
                color: Colors.red,
                statusText: "Total",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Download (In Progress)",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              textColor: Colors.black,
              backgroundColor: Colors.white,
              fontSize: 16);
        },
        child: Icon(
          Icons.download_outlined,
          color: Colors.blue,
        ),
      ),
    );
  }
}
