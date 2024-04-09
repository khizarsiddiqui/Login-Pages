import 'package:demo3/components/common_button.dart';
import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class UpdateTask extends StatefulWidget {
  const UpdateTask({super.key});

  @override
  State<UpdateTask> createState() => _UpdateTaskState();
}

List<String> assignList = [
  "Khizar",
  "zaryab",
  "muzzamil",
  "shozab",
  "hussain",
  "salman",
];
List<String> projectList = [
  "Project-01",
  "Project-02",
  "Project-03",
  "Project-04",
  "Project-05",
  "Project-06",
];
List<String> priorityList = [
  "Low",
  "Medium",
  "High",
  "Urgent",
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

class _UpdateTaskState extends State<UpdateTask> {
  TextEditingController assignController = TextEditingController();
  TextEditingController projectController = TextEditingController();
  TextEditingController priorityController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Task"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              UpdateTaskField(
                labelText: "Select Project",
                controller: projectController,
                startIcon: Icon(Icons.work_outline),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, projectList, projectController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Subject",
                startIcon: Icon(Icons.document_scanner_outlined),
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
              UpdateTaskField(
                readOnly: true,
                labelText: "Assign to",
                controller: assignController,
                startIcon: Icon(Icons.person_outline),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, assignList, assignController);
                },
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Priority*",
                controller: priorityController,
                startIcon: Icon(Icons.priority_high_outlined),
                endIcon: Icon(Icons.arrow_drop_up),
                onPress: () {
                  mysheet(context, priorityList, priorityController);
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
                labelText: "Due Date",
                startIcon: Icon(Icons.calendar_month_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Status",
                controller: statusController,
                startIcon: Icon(Icons.flag_outlined),
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, statusList, statusController);
                },
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: CommonButton(
                        color: Colors.grey.shade500,
                        onPress: () {
                          // Handle the action for the first button
                        },
                        text: "Cancel",
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      child: CommonButton(
                        color: Colors.lightBlueAccent,
                        onPress: () {
                          // Handle the action for the first button
                        },
                        text: "Update",
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
