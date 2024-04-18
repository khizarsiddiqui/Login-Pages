import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'common_button.dart';
import 'common_text.dart';
import 'update_taskfield.dart';

class FilterTask extends StatefulWidget {
  const FilterTask({Key? key}) : super(key: key);

  @override
  State<FilterTask> createState() => _FilterTaskState();
}

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

class _FilterTaskState extends State<FilterTask> {
  TextEditingController projectController = TextEditingController();
  TextEditingController priorityController = TextEditingController();
  TextEditingController statusController = TextEditingController();

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
                  text: "Filter Tasks",
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
                  labelText: "Select Project",
                  controller: projectController,
                  startIcon: Icon(Icons.work_outline),
                  endIcon: Icon(Icons.arrow_drop_down),
                  onPress: () {
                    _showBottomSheet(context, projectList, projectController);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                UpdateTaskField(
                  readOnly: true,
                  labelText: "Priority*",
                  controller: priorityController,
                  startIcon: Icon(Icons.priority_high_outlined),
                  endIcon: Icon(Icons.arrow_drop_up),
                  onPress: () {
                    _showBottomSheet(context, priorityList, priorityController);
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
}
