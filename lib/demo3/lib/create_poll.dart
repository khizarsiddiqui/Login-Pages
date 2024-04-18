import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreatePoll extends StatefulWidget {
  const CreatePoll({super.key});

  @override
  State<CreatePoll> createState() => _CreatePollState();
}

List<String> dayList = [
  "1 Day",
  "2 Days",
  "3 Days",
  "5 Days",
  "7 Days",
];

class _CreatePollState extends State<CreatePoll> {
  TextEditingController dayController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Poll"),
        actions: [
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Posted",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.black,
                  backgroundColor: Colors.white,
                  fontSize: 16);
            },
            child: Text(
              "Post",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              UpdateTaskField(
                labelText: "Your Question*",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Option 1*",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Option 2*",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Option 3",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                labelText: "Option 4",
                minLines: 1,
                maxLines: 5,
              ),
              SizedBox(
                height: 15,
              ),
              UpdateTaskField(
                readOnly: true,
                labelText: "Poll Duration*",
                controller: dayController,
                endIcon: Icon(Icons.arrow_drop_down),
                onPress: () {
                  mysheet(context, dayList, dayController);
                },
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
