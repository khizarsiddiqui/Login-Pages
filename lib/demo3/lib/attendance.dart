import 'package:demo3/components/attendance_card.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pie_chart/pie_chart.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String selectedYear = 'Select Year';
  String selectedMonth = 'Select Month';
  final colorList = [
    Colors.green,
    Colors.orangeAccent,
    Colors.red,
  ];
  Map<String, double> dataMap = {
    "On Timen": 10,
    "Late": 10,
    "Absent": 8,
  };

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
        title: Text("Attendance"),
      ),
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
                child: PieChart(
                  centerText: "28 \nTotal Days",
                  centerTextStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  chartRadius: 120,
                  ringStrokeWidth: 14,
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  baseChartColor: Colors.transparent,
                  colorList: colorList,
                  chartValuesOptions: ChartValuesOptions(
                    showChartValues: false,
                    chartValueBackgroundColor: Colors.transparent,
                    showChartValuesInPercentage: false,
                  ),
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
                  color: Colors.lightBlueAccent.shade100,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AttendanceCard(
              day: "01 Wednesday",
              checkinTime: "12:02 pm",
              checkoutTime: "09:32 pm",
              workDuration: "8.5 Hrs",
            ),
            SizedBox(
              height: 20,
            ),
            AttendanceCard(
              day: "25 Saturday",
              checkinTime: "12:06 pm",
              checkoutTime: "09:36 pm",
              workDuration: "8.5 Hrs",
            ),
            SizedBox(
              height: 20,
            ),
            AttendanceCard(
              day: "21 Tuesday",
              checkinTime: "12:15 pm",
              checkoutTime: "09:15 pm",
              workDuration: "8 Hrs",
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.blue]),
                ),
                width: double.infinity,
                height: 50,
                child: TextButton(
                  child: Text(
                    "Download",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Download (In Progress)",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        fontSize: 16);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
