import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import 'add_paymentfield.dart';
import 'common_button.dart';
import 'common_text.dart';
import 'update_taskfield.dart';

class FilterTransaction extends StatefulWidget {
  const FilterTransaction({Key? key}) : super(key: key);

  @override
  State<FilterTransaction> createState() => _FilterTransactionState();
}

List<String> partyType = [
  "Customer",
  "Employee",
  "ShareHolder",
  "Supplier",
];
List<String> partyList = [
  "ProjectX",
  "Codes Soft",
  "Nesscale",
];

class _FilterTransactionState extends State<FilterTransaction> {
  TextEditingController partyTypeController = TextEditingController();
  TextEditingController partyController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                CommonText(
                  text: "Filter Transaction",
                  fontSize: 16,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                UpdateTaskField(
                  readOnly: true,
                  labelText: "Select Party Type",
                  controller: partyTypeController,
                  startIcon: Icon(Icons.work_outline),
                  endIcon: Icon(Icons.arrow_drop_down),
                  onPress: () {
                    _showBottomSheet(context, partyType, partyTypeController);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                UpdateTaskField(
                  readOnly: true,
                  labelText: "Party Name",
                  controller: partyController,
                  startIcon: Icon(Icons.priority_high_outlined),
                  endIcon: Icon(Icons.arrow_drop_up),
                  onPress: () {
                    _showBottomSheet(context, partyList, partyController);
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
                        labelText: "From Date",
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
                        labelText: "To Date",
                        startIcon: Icon(Icons.calendar_month_outlined),
                      ),
                    ),
                  ],
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
                    text: "Cancel Filters",
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
                          msg: "Filters Applied",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                    text: "Apply Filters",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> _showBottomSheet(BuildContext context, List<String> list,
      TextEditingController controller) {
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
