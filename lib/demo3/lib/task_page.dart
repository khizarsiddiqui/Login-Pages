import 'components/tasks_cards.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  String dropdownValue = 'Overdue';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Tasks"),
          backgroundColor: Colors.lightBlueAccent,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: const Color.fromARGB(255, 34, 85, 127),
            tabs: <Widget>[
              Tab(
                text: "My Tasks",
                icon: Icon(
                  Icons.task_sharp,
                  color: Colors.black,
                ),
              ),
              Tab(
                text: "Completed Tasks",
                icon: Icon(
                  Icons.done_all,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TaskCard(
                currentstatus: "Urgent",
                text1: "New Project",
                text2: "Finish first task",
                text3: "15-06-2023",
              ),
              TaskCard(
                currentstatus: "Low",
                text1: "Project-1",
                text2: "demo2",
                text3: "25-06-2023",
              ),
              TaskCard(
                currentstatus: "Medium",
                text1: "Project-2",
                text2: "first task",
                text3: "05-02-2023",
              ),
              TaskCard(
                currentstatus: "High",
                text1: "Project-3",
                text2: "finished",
                text3: "25-09-2023",
              ),
              TaskCard(
                currentstatus: "Urgent",
                text1: "New Project",
                text2: "Finish first task",
                text3: "15-06-2023",
              ),
              TaskCard(
                currentstatus: "Low",
                text1: "Project-1",
                text2: "demo2",
                text3: "25-06-2023",
              ),
              TaskCard(
                currentstatus: "Medium",
                text1: "Project-2",
                text2: "first task",
                text3: "05-02-2023",
              ),
              TaskCard(
                currentstatus: "High",
                text1: "Project-3",
                text2: "finished",
                text3: "25-09-2023",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _showDropdown(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Select an option'),
  //         content: DropdownButton<String>(
  //           value: dropdownValue,
  //           items: <String>[
  //             'Overdue',
  //             'Pending Review',
  //             'Template',
  //             'Completed'
  //           ].map<DropdownMenuItem<String>>((String value) {
  //             return DropdownMenuItem<String>(
  //               value: value,
  //               child: Text(
  //                 value,
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //             );
  //           }).toList(),
  //           onChanged: (String? newValue) {
  //             setState(() {
  //               dropdownValue = newValue!;
  //             });
  //             Navigator.of(context).pop();
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }
}
