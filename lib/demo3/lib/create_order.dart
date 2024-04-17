import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/items_list.dart';
import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class CreateOrder extends StatefulWidget {
  const CreateOrder({super.key});

  @override
  State<CreateOrder> createState() => _CreateOrderState();
}

List<String> customerList = [
  "Khizar",
  "zaryab",
  "muzzamil",
  "shozab",
  "hussain",
  "salman",
];

class _CreateOrderState extends State<CreateOrder> {
  TextEditingController customerController = TextEditingController();
  TextEditingController itemController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Order"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                readOnly: true,
                labelText: "Customer",
                controller: customerController,
                startIcon: Icon(Icons.person_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, customerList, customerController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                readOnly: true,
                labelText: "Select Item*",
                controller: itemController,
                startIcon: Icon(Icons.add_box_outlined),
                endIcon: Icon(Icons.arrow_right),
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemsList(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                controller: dateController,
                readOnly: true,
                onPress: () {
                  _selectDate(context);
                },
                labelText: "Date*",
                startIcon: Icon(Icons.calendar_month_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              CommonButton(
                width: double.infinity,
                color: Colors.lightBlueAccent,
                onPress: () {
                  Fluttertoast.showToast(
                      msg: "Attachment (Will Open Gallery)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 16);
                },
                text: "Attachment",
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Tax & Discount",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Tax: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.1,200",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub Total: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.6,200",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount: ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Rs.300",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rs.5,900",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Container(
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
                    Spacer(),
                    Expanded(
                      child: CommonButton(
                        color: Colors.lightBlueAccent,
                        onPress: () {
                          Fluttertoast.showToast(
                              msg: "Created (In Progress)",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              textColor: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 16);
                        },
                        text: "Create Order",
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
