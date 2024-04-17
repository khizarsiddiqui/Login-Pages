import 'package:demo3/add_leave.dart';
import 'package:flutter/material.dart';

import 'components/leave_card.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  String selectedYear = 'Select Year';
  String selectedMonth = 'Select Month';
  final List<String> statusText = [
    'Open',
    'Open',
    'Open',
    'Open',
    'Open',
    'Open',
    'Open',
  ];
  final List<String> leaveText = [
    'Leave Without Pay',
    'Leave Without Pay',
    'Leave Without Pay',
    'Leave Without Pay',
    'Leave Without Pay',
    'Leave Without Pay',
    'Leave Without Pay',
  ];
  final List<String> centerText = [
    '25-12-2023 to 03-01-2024',
    '21-01-2024 to 23-02-2024',
    '22-01-2024 to 27-02-2024',
    '25-01-2024 to 07-02-2024',
    '12-02-2024 to 17-02-2024',
    '02-03-2024 to 11-03-2024',
    '12-03-2024 to 27-03-2024',
  ];
  final List<String> usersList = [
    'Khizar',
    'Muzammil',
    'Zaryab',
    'Hussain',
    'Shozab',
    'Salman',
    'Tazaim',
  ];
  @override
  Widget build(BuildContext context) {
    void showYearMenu() async {
      final List<String> popList = ['2024', '2023', '2022'];
      await showMenu(
        context: context,
        position: RelativeRect.fromLTRB(50, 50, 200, 200),
        items: List.generate(
          popList.length,
          (index) => PopupMenuItem(
            value: popList[index],
            child: Text(
              popList[index],
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
        elevation: 4.0,
      ).then((value) {
        if (value != null) {
          setState(() {
            selectedYear = value;
          });
        }
      });
    }

    void showMonthMenu() async {
      final List<String> popList = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];
      await showMenu(
        color: Colors.white,
        context: context,
        position: RelativeRect.fromLTRB(200, 50, 50, 200),
        items: List.generate(
          popList.length,
          (index) => PopupMenuItem(
            value: popList[index],
            child: Text(
              popList[index],
              style: TextStyle(
                fontSize: 15,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
        elevation: 4.0,
      ).then((value) {
        if (value != null) {
          setState(() {
            selectedMonth = value;
          });
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("My Leaves"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: GestureDetector(
                      onTap: showYearMenu,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          selectedYear,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: GestureDetector(
                      onTap: showMonthMenu,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          selectedMonth,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Upcoming Leaves (0)",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Past Leaves (${centerText.length})",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: centerText.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LeaveCard(
                      statusText: statusText[index],
                      centerText: centerText[index],
                      leaveText: leaveText[index],
                      usersList: usersList[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddLeave(),
            ),
          );
        },
        child: Icon(
          Icons.add_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
