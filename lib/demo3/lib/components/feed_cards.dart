// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'comments_list.dart';
import 'common_text.dart';

class FeedCard extends StatefulWidget {
  String text1;
  String text2;
  String text3;
  String occupation;
  String date;
  String startingText;

  FeedCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.occupation,
      required this.date,
      required this.startingText})
      : super(key: key);

  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
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
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "(In Progress)",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 16);
                },
                icon: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommonText(
              text: widget.text1,
              fontSize: 16,
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
                  text: widget.text3,
                ),
                Spacer(),
                CommonText(
                  text: widget.text2,
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
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Liked",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 16);
                    },
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    iconSize: 20,
                    color: Colors.lightBlueAccent,
                    icon: Icon(Icons.comment_outlined),
                    onPressed: () {
                      mysheet(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> mysheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Wrap(
            children: [
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
              CommentList(
                username: "Khizar S.",
                commentBody: "Testing Comments",
                time: "8 months ago",
              ),
            ],
          ),
        );
      },
    );
  }
}
