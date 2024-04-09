import 'package:demo3/components/comments_list.dart';
import 'package:demo3/update_task.dart';
import 'package:flutter/material.dart';

import 'comment_textfield.dart';
import 'common_text.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  TextEditingController commentController = TextEditingController();
  double _currentSliderValue = 1.0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("TASK-203-2022"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateTask()),
              );
            },
            icon: Icon(Icons.edit_outlined),
            color: Colors.blue,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: "New Project",
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 8,
              ),
              CommonText(
                text: "Finish First Task",
                color: Colors.grey.shade500,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: w * 0.22,
                    height: h * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      border: Border.all(
                        color: Colors.red.shade100,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Urgent",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: w * 0.26,
                      height: h * 0.06,
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(
                          color: Colors.red.shade100,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Overdue",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            "images/arrows.png",
                            color: Colors.red,
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: "Expected Hrs",
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    weight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Due Date",
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    weight: FontWeight.bold,
                  ),
                  CommonText(
                    text: "Actual Hrs",
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      CommonText(
                        text: "0.0",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      CommonText(
                        text: "2023-06-15",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      CommonText(
                        text: "0.0",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommonText(
                text: "Task Progress (${_currentSliderValue.toInt()} %)",
                color: Colors.grey.shade600,
                fontSize: 14,
                weight: FontWeight.bold,
              ),
              Slider(
                thumbColor: Colors.green.shade400,
                activeColor: Colors.green,
                inactiveColor: Colors.lightGreenAccent,
                value: _currentSliderValue,
                max: 100,
                divisions: 100,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonText(
                    text: "0 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                  CommonText(
                    text: "20 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                  CommonText(
                    text: "40 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                  CommonText(
                    text: "60 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                  CommonText(
                    text: "80 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                  CommonText(
                    text: "100 %",
                    color: Colors.black,
                    fontSize: 12,
                    weight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommonText(
                text: "Description",
                color: Colors.grey.shade500,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              CommonText(
                text: "It's shame to create a task to finish earlier task.",
                color: Colors.black87,
                weight: FontWeight.w400,
              ),
              SizedBox(
                height: 10,
              ),
              CommonText(
                text: "Assigned to",
                color: Colors.grey.shade500,
                weight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 12,
                    child: Icon(
                      Icons.person,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommonText(
                text: "Assigned by",
                color: Colors.grey.shade500,
                weight: FontWeight.bold,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 12,
                  child: Icon(
                    Icons.person,
                    size: 12,
                  ),
                ),
                title: CommonText(
                  text: "Khizar S.",
                  fontSize: 16,
                  weight: FontWeight.w500,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.blue,
                    ),
                  ),
                  CommonText(
                    text: "Activity",
                    color: Colors.blue,
                    fontSize: 16,
                    weight: FontWeight.w500,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommentTextField(
                controller: commentController,
                hint: "Comments here...",
                onPress: () {},
              ),
              CommentList(
                  username: "Khizar S.",
                  commentBody: "hello",
                  time: "9 months ago"),
              CommentList(
                  username: "Khizar S.",
                  commentBody: "hello",
                  time: "9 months ago"),
              CommentList(
                  username: "Khizar S.",
                  commentBody: "hello",
                  time: "9 months ago"),
              CommentList(
                  username: "Khizar S.",
                  commentBody: "hello",
                  time: "9 months ago"),
              CommentList(
                  username: "Khizar S.",
                  commentBody: "hello",
                  time: "9 months ago"),
            ],
          ),
        ),
      ),
    );
  }
}
