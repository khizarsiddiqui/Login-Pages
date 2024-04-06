// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'common_text.dart';

class PollCard extends StatefulWidget {
  String centerText1;
  String centerText2;
  String centerText3;
  String? centerText4;
  String comment;
  String likeCount;
  String voteCount;
  String occupation;
  String date;
  String startingText;

  PollCard(
      {Key? key,
      required this.centerText1,
      required this.centerText2,
      required this.centerText3,
      this.centerText4,
      required this.comment,
      required this.likeCount,
      required this.voteCount,
      required this.occupation,
      required this.date,
      required this.startingText})
      : super(key: key);

  @override
  _PollCardState createState() => _PollCardState();
}

class _PollCardState extends State<PollCard> {
  int yes = 120;
  int no = 40;
  int yes2 = 90;
  int no2 = 70;
  int selectedOption = 1;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(left: 0, right: 0),
              leading: CircleAvatar(),
              title: CommonText(
                text: widget.startingText,
                weight: FontWeight.bold,
                fontSize: 16,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: widget.occupation,
                  ),
                  CommonText(
                    text: widget.date,
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade300, width: 0.7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: widget.centerText1,
                    fontSize: 16,
                  ),
                  Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                      CommonText(
                        text: widget.centerText2,
                        fontSize: 16,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        height: 8,
                        width: 210,
                        child: LinearProgressIndicator(
                          color: Colors.lightBlueAccent,
                          backgroundColor: Colors.grey.shade200,
                          value: (yes / (yes + no)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<int>(
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                      CommonText(
                        text: widget.centerText3,
                        fontSize: 16,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        height: 8,
                        width: 210,
                        child: LinearProgressIndicator(
                          color: Colors.lightBlueAccent,
                          backgroundColor: Colors.grey.shade200,
                          value: (yes2 / (yes2 + no2)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CommonText(
                        text: widget.voteCount,
                        fontSize: 16,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.stop,
                        size: 8,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      CommonText(
                        text: "Result",
                        fontSize: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_sharp,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 8,
                ),
                CommonText(
                  text: widget.likeCount,
                ),
                Spacer(),
                CommonText(
                  text: widget.comment,
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              indent: 6,
              endIndent: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    iconSize: 20,
                    color: Colors.lightBlueAccent,
                    icon: Icon(Icons.thumb_up_rounded),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    iconSize: 20,
                    color: Colors.lightBlueAccent,
                    icon: Icon(Icons.comment_outlined),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
