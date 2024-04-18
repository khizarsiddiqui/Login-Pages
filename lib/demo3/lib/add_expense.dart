import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class ApplyExpense extends StatefulWidget {
  const ApplyExpense({super.key});

  @override
  State<ApplyExpense> createState() => _ApplyExpenseState();
}

List<String> expenseList = [
  "Travel",
  "Others",
  "Calls",
  "Medical",
  "Food",
];

class _ApplyExpenseState extends State<ApplyExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Expense"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              UpdateTaskField(
                controller: dateController,
                readOnly: true,
                onPress: () {
                  _selectDate(context);
                },
                labelText: "Select day*",
                startIcon: Icon(Icons.calendar_month_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                readOnly: true,
                labelText: "Select Expense Type*",
                controller: expenseController,
                startIcon: Icon(Icons.currency_exchange_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, expenseList, expenseController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Type Reason here...*",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Type Amount*",
                controller: expenseController,
                startIcon: Icon(Icons.currency_exchange_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              CommonButton(
                width: double.infinity,
                color: Colors.lightBlueAccent,
                onPress: () {
                  Fluttertoast.showToast(
                      msg: "Upload Expense Bill (Will Open Gallery)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 16);
                },
                text: "Upload Expense Bill",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: CommonButton(
                  color: Colors.grey.shade500,
                  onPress: () {
                    Fluttertoast.showToast(
                        msg: "Cancelled",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 16);
                  },
                  text: "Cancel",
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: CommonButton(
                  color: Colors.lightBlueAccent,
                  onPress: () {
                    Fluttertoast.showToast(
                        msg: "Applied (In Progress)",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 16);
                  },
                  text: "Apply",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> mysheet(BuildContext context, list, controller) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              onPressed: () {
                setState(() {
                  controller.text = list[index];
                  Navigator.pop(context);
                });
              },
              child: Text(list[index]),
            );
          },
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        dateController.text = DateFormat('yyyy-MM-dd').format(picked);
        print(dateController.text);
      });
    }
  }
}
