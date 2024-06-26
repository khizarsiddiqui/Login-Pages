import 'package:demo3/add_task.dart';
import 'package:demo3/components/filter_task.dart';
import 'package:flutter/material.dart';
import 'components/tasks_cards.dart';

class TaskPage extends StatefulWidget {
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  bool _showBottomSheet = false;

  // Method to toggle the visibility of the bottom sheet
  void _toggleBottomSheet() {
    setState(() {
      _showBottomSheet = !_showBottomSheet;
    });
  }

  final List<Widget> _tabs = [
    // Content for the "My Tasks" tab
    SingleChildScrollView(
      child: Column(
        children: [
          TaskCard(
            currentstatus: "Urgent",
            text1: "New Project",
            text2: "Finish first task",
            text3: "15-06-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "Low",
            text1: "Project-1",
            text2: "demo2",
            text3: "25-06-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "Medium",
            text1: "Project-2",
            text2: "first task",
            text3: "05-02-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "High",
            text1: "Project-3",
            text2: "finished",
            text3: "25-09-2023",
            marginSides: 20,
          ),
        ],
      ),
    ),
    // Content for the "Completed Tasks" tab
    SingleChildScrollView(
      child: Column(
        children: [
          TaskCard(
            currentstatus: "Urgent",
            text1: "Completed Project 1",
            text2: "Task 1",
            text3: "15-06-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "Low",
            text1: "Completed Project 2",
            text2: "Task 2",
            text3: "25-06-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "Medium",
            text1: "Completed Project 3",
            text2: "Task 3",
            text3: "05-02-2023",
            marginSides: 20,
          ),
          TaskCard(
            currentstatus: "High",
            text1: "Completed Project 4",
            text2: "Task 4",
            text3: "25-09-2023",
            marginSides: 20,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Tasks"),
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
          actions: [
            IconButton(
              onPressed: () {
                _toggleBottomSheet();
              },
              icon: Icon(Icons.filter_list_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: _tabs,
              ),
            ),
          ],
        ),
        bottomSheet: _showBottomSheet ? FilterTask() : null,
        floatingActionButton: _showBottomSheet
            ? null
            : FloatingActionButton(
                backgroundColor: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddTask(),
                    ),
                  );
                },
                child: Icon(
                  Icons.add_outlined,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
