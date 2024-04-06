import 'package:flutter/material.dart';

import 'components/common_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0, right: 0),
                  leading: CircleAvatar(),
                  title: CommonText(
                    text: "Khizar S.",
                    weight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  subtitle: CommonText(
                    text: "CEO",
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: "Employee ID",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "HR-EMP-00022",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Date of Joining",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "14-03-2022",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Date of Birth",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "04-03-1986",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Gender",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "Male",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Official email address",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "khizar9898q@gmail.com",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Personal email address",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "khizar9898q@gmail.com",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Contact Number",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "9328200022",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                        Divider(),
                        CommonText(
                          text: "Emergency contact number",
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "4232820022",
                          fontSize: 16,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
