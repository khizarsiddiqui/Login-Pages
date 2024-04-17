import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/add_paymentfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

List<String> namingSeries = [
  "ACC-PAY-20",
];
List<String> paymentType = [
  "Receive",
  "Pay",
  "Internal Transfer",
];
List<String> paymentMode = [
  "Cheque",
  "Credit Card",
  "Wire Transfer",
  "Bank Draft",
  "Cash",
];
List<String> companyList = [
  "ProjectX",
  "Codes Soft",
  "Nesscale",
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

class _AddPaymentState extends State<AddPayment> {
  TextEditingController namingController = TextEditingController();
  TextEditingController paymentController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController modeController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController partytypeController = TextEditingController();
  TextEditingController partyController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Payment Entry"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              AddPaymentField(
                readOnly: true,
                labelText: "Naming Series*",
                controller: namingController,
                startIcon: Icon(Icons.person_outline),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, namingSeries, namingController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Payment Type*",
                controller: paymentController,
                startIcon: Icon(Icons.work_outline),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, paymentType, paymentController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                controller: dateController,
                readOnly: true,
                onPress: () {
                  _selectDate(context);
                },
                labelText: "Date*",
                startIcon: Icon(Icons.calendar_month_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Payment Mode",
                controller: modeController,
                startIcon: Icon(Icons.mobile_screen_share_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, paymentMode, modeController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Company*",
                controller: companyController,
                startIcon: Icon(Icons.architecture_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, companyList, companyController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              AddPaymentField(
                readOnly: true,
                labelText: "Party Type*",
                controller: partytypeController,
                startIcon: Icon(Icons.people_sharp),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, partyType, partytypeController);
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
                  mysheet(context, partyList, partyController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Party Balance: N/A",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: CommonButton(
                  color: Colors.lightBlueAccent,
                  onPress: () {
                    Fluttertoast.showToast(
                        msg: "Add (In Progress)",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 16);
                  },
                  text: "Add",
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
