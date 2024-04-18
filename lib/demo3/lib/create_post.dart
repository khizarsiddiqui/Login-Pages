import 'package:demo3/components/update_taskfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(),
                title: Text("Khizar H.S"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.camera_enhance_outlined),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.image_outlined),
                    ),
                  ],
                ),
              ),
              UpdateTaskField(
                labelText: "What's on your mind?",
                minLines: 1,
                maxLines: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
