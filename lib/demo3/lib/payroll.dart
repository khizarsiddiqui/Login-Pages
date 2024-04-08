import 'package:flutter/material.dart';

class PayrollScreen extends StatefulWidget {
  const PayrollScreen({Key? key}) : super(key: key);

  @override
  State<PayrollScreen> createState() => _PayrollScreenState();
}

class _PayrollScreenState extends State<PayrollScreen> {
  String selectedYear = 'Select Year';
  String selectedMonth = 'Select Month';

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
      appBar: AppBar(title: Text("Payroll"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                child: Center(
                  child: Text("No Data Available"),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
