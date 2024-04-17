import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/add_paymentfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class AddLeave extends StatefulWidget {
  const AddLeave({super.key});

  @override
  State<AddLeave> createState() => _AddLeaveState();
}

List<String> leaveType = [
  "Sick Leave",
  "Sick",
  "Leave Without Pay",
  "Privilege Leave",
  "Compensatory Off",
  "Casual Leave",
];
List<String> period = [
  "First Half",
  "Second Half",
];

class _AddLeaveState extends State<AddLeave> {
  TextEditingController dateController = TextEditingController();
  TextEditingController leaveController = TextEditingController();
  TextEditingController periodController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Leave Request"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: AddPaymentField(
                      controller: dateController,
                      readOnly: true,
                      onPress: () {
                        _selectDate(context);
                      },
                      labelText: "Start Date*",
                      startIcon: Icon(Icons.calendar_month_outlined),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: AddPaymentField(
                      controller: dateController,
                      readOnly: true,
                      onPress: () {
                        _selectDate(context);
                      },
                      labelText: "End Date*",
                      startIcon: Icon(Icons.calendar_month_outlined),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Leave Type*",
                controller: leaveController,
                startIcon: Icon(Icons.beach_access_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, leaveType, leaveController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: AddPaymentField(
                      controller: dateController,
                      readOnly: true,
                      onPress: () {
                        _selectDate(context);
                      },
                      labelText: "Start Date*",
                      startIcon: Icon(Icons.calendar_month_outlined),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: AddPaymentField(
                      readOnly: true,
                      labelText: "Period*",
                      controller: leaveController,
                      endIcon: Icon(Icons.arrow_upward_outlined),
                      onPress: () {
                        mysheet(context, period, periodController);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: CommonButton(
                        color: Colors.lightBlueAccent,
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
                              msg: "Applied",
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
