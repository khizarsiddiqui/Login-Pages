// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'comments_list.dart';

class TaskCard extends StatefulWidget {
  String text1;
  String text2;
  String text3;
  String currentstatus;
  double marginSides;

  TaskCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.currentstatus,
      required this.marginSides})
      : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(widget.marginSides),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.35),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -20,
                    left: -50,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlue.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -80,
                    top: -50,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: -10,
                    child: Container(
                      height: 250,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.text1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 11,
                    child: Container(
                      height: 200,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.text2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 57,
                    left: 7,
                    child: Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 33,
                    child: Container(
                      height: 200,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.text3,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                border: Border.all(
                  color: Colors.white54,
                ),
              ),
              child: Center(
                child: Text(
                  widget.currentstatus,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: 5),
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Overdue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      "images/arrows.png",
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            top: 60,
            left: 2,
            right: 2,
            child: Divider(
              color: Colors.white,
              indent: 6,
              endIndent: 6,
            ),
          ),
          Positioned(
            bottom: 7,
            left: 15,
            child: Container(
              width: 30,
              height: 30,
              child: IconButton(
                iconSize: 20,
                color: Colors.white,
                icon: Icon(Icons.comment_outlined),
                onPressed: () {
                  mysheet(context);
                },
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 45,
            child: Container(
              height: 200,
              alignment: Alignment.centerLeft,
              child: Text(
                "Khizar S.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: CircleAvatar(
              radius: 10,
              child: Image.asset('images/instagram.png'),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 10,
            child: CircleAvatar(
              radius: 10,
              child: Image.asset('images/instagram.png'),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 10,
            child: CircleAvatar(
              radius: 10,
              child: Image.asset('images/instagram.png'),
            ),
          ),
          Positioned(
            right: 40,
            bottom: 10,
            child: CircleAvatar(
              radius: 10,
              child: Image.asset('images/instagram.png'),
            ),
          ),
          Positioned(
            right: 50,
            bottom: 10,
            child: CircleAvatar(
              radius: 10,
              child: Image.asset('images/instagram.png'),
            ),
          ),
        ],
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
