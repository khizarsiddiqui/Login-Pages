import 'package:demo3/components/visit_card.dart';
import 'package:flutter/material.dart';

import 'create_visit.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({super.key});

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visits"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VisitCard(
                color: Colors.grey,
                statusText: "Order Requirement",
              ),
              SizedBox(
                height: 20,
              ),
              VisitCard(
                color: Colors.grey,
                statusText: "Inquiry",
              ),
              SizedBox(
                height: 20,
              ),
              VisitCard(
                color: Colors.grey,
                statusText: "Order Requirement",
              ),
              SizedBox(
                height: 20,
              ),
              VisitCard(
                color: Colors.grey,
                statusText: "Inquiry",
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
              builder: (context) => CreateVisit(),
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
