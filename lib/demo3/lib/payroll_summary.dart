import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pie_chart/pie_chart.dart';

import 'components/common_text.dart';
import 'components/payroll_text.dart';

class PayrollSummary extends StatefulWidget {
  const PayrollSummary({Key? key}) : super(key: key);

  @override
  State<PayrollSummary> createState() => _PayrollSummaryState();
}

class _PayrollSummaryState extends State<PayrollSummary> {
  String selectedYear = 'Select Year';
  String selectedMonth = 'Select Month';
  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(223, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(184, 69, 69, 1),
      Color.fromRGBO(158, 76, 72, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(0, 82, 55, 1),
    ],
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ],
  ];
  Map<String, double> dataMap = {
    "BHD 10300": 4,
    "BHD 200": 3,
    "BHD 1200": 3,
  };

  @override
  Widget build(BuildContext context) {
    // Calculate the sum of values without the "BHD" prefix
    double sum = 0;
    dataMap.forEach((key, value) {
      // Extract the numeric part of the key (excluding "BHD")
      String numericPart = key.substring(4);
      // Convert the numeric part to a double and add it to the sum
      sum += double.parse(numericPart);
    });
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
        title: Text("Payroll"),
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
                  centerTextStyle: TextStyle(
                    color: Color.fromARGB(255, 85, 84, 84),
                    fontWeight: FontWeight.bold,
                  ),
                  centerText: "Gross Pay\n $sum",
                  chartRadius: 120,
                  ringStrokeWidth: 08,
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  baseChartColor: Colors.transparent,
                  gradientList: gradientList,
                  chartValuesOptions: ChartValuesOptions(
                    chartValueBackgroundColor: Colors.transparent,
                    showChartValuesInPercentage: false,
                    showChartValues: false,
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
                        text: "Basic",
                        color: Colors.blueAccent,
                        weight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      Divider(),
                      PayrollText(
                          textLeft: "Employee ID", textRight: "HR-EMP-00022"),
                      Divider(),
                      PayrollText(
                          textLeft: "Effective work days", textRight: "31.0"),
                      Divider(),
                      PayrollText(
                          textLeft: "Total work days", textRight: "31.0"),
                      Divider(),
                      PayrollText(textLeft: "LOP", textRight: "0.0"),
                      Divider(),
                      CommonText(
                        text: "Earnings",
                        color: Colors.blueAccent,
                        weight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      Divider(),
                      PayrollText(textLeft: "Basic", textRight: "BHD 10000.0"),
                      Divider(),
                      PayrollText(textLeft: "HRA", textRight: "BHD 200.0"),
                      Divider(),
                      PayrollText(
                          textLeft: "Leave Encashment", textRight: "BHD 300.0"),
                      Divider(),
                      CommonText(
                        text: "Deduction",
                        color: Colors.blueAccent,
                        weight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      Divider(),
                      PayrollText(
                          textLeft: "Income Tax", textRight: "BHD 100.0"),
                      Divider(),
                      PayrollText(textLeft: "Gosi", textRight: "BHD 100.0"),
                    ],
                  ),
                ),
              ),
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
