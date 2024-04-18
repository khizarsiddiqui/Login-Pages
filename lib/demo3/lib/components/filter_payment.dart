import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'add_paymentfield.dart';
import 'common_button.dart';
import 'common_text.dart';
import 'update_taskfield.dart';

class FilterPayment extends StatefulWidget {
  const FilterPayment({Key? key}) : super(key: key);

  @override
  State<FilterPayment> createState() => _FilterPaymentState();
}

List<String> paymentType = [
  "Receive",
  "Pay",
  "Internal Transfer",
];
List<String> partyType = [
  "Customer",
  "Employee",
  "ShareHolder",
  "Supplier",
];
List<String> partyList = [
  "Party-01",
  "Party-02",
  "Party-03",
  "Party-04",
  "Party-05",
  "Party-06",
];
List<String> statusList = [
  "open",
  "working",
  "pending review",
  "overdue",
  "template",
  "completed",
  "cancelled",
  "on hold",
];

class _FilterPaymentState extends State<FilterPayment> {
  TextEditingController typeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController partytypeController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController partyController = TextEditingController();

  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.5,
      height: 400,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                CommonText(
                  text: "Filter Payment Entries",
                  fontSize: 16,
                  weight: FontWeight.bold,
                ),
                Divider(),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: UpdateTaskField(
                        readOnly: true,
                        labelText: "Type",
                        controller: typeController,
                        startIcon: Icon(Icons.work_outline),
                        endIcon: Icon(Icons.arrow_drop_down),
                        onPress: () {
                          _showBottomSheet(
                              context, paymentType, typeController);
                        },
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
                        labelText: "Posting Date",
                        startIcon: Icon(Icons.calendar_month_outlined),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                UpdateTaskField(
                  readOnly: true,
                  labelText: "Party Type",
                  controller: typeController,
                  startIcon: Icon(Icons.people_outline),
                  endIcon: Icon(Icons.arrow_drop_down),
                  onPress: () {
                    _showBottomSheet(context, partyType, partytypeController);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                UpdateTaskField(
                  readOnly: true,
                  labelText: "Status",
                  controller: statusController,
                  startIcon: Icon(Icons.flag_outlined),
                  endIcon: Icon(Icons.arrow_drop_down),
                  onPress: () {
                    _showBottomSheet(context, statusList, statusController);
                  },
                ),
                SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Party*",
                controller: partyController,
                startIcon: Icon(Icons.person_3_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  _showBottomSheet(context, partyList, partyController);
                },
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
                          msg: "Cleared",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                    text: "Clear Filters",
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
