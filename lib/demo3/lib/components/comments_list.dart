// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CommentList extends StatelessWidget {
  String username;
  String commentBody;
  String time;

  CommentList({
    Key? key,
    required this.username,
    required this.commentBody,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.person)),
      title: Text(username),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(commentBody),
          Text(time),
        ],
      ),
    );
  }
}
