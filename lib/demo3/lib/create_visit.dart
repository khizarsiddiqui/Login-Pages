import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateVisit extends StatefulWidget {
  const CreateVisit({super.key});

  @override
  State<CreateVisit> createState() => _CreateVisitState();
}

List<String> customerList = [
  "Khizar",
  "zaryab",
  "muzzamil",
  "shozab",
  "hussain",
  "salman",
];
List<String> visitList = [
  "Inquiry",
  "Order Requirement",
  "Product Demo",
];

class _CreateVisitState extends State<CreateVisit> {
  TextEditingController customerController = TextEditingController();
  TextEditingController visitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Visit"),
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
                labelText: "Visit Type*",
                controller: visitController,
                startIcon: Icon(Icons.task_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, visitList, visitController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Description",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 300),
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
                              msg: "Created",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              textColor: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 16);
                        },
                        text: "Create",
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
}
