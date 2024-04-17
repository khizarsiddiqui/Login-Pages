import 'package:flutter/material.dart';
import 'components/expense_card.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  String selectedYear = 'Select Year';
  String selectedMonth = 'Select Month';
  final List<String> statusText = [
    'Open',
    'Open',
    'Draft',
    'Open',
    'Draft',
    'Open',
    'Draft',
  ];
  final List<String> priceList = [
    'Rs.200',
    'Rs.1200',
    'Rs.500',
    'Rs.700',
    'Rs.100',
    'Rs.2200',
    'Rs.600',
  ];
  final List<String> expenseText = [
    'Food Expense',
    'Travel Expense',
    'Travel Expense',
    'Medical Expense',
    'Fuel Expense',
    'Travel Expense',
    'Food Expense',
  ];
  final List<String> centerText = [
    '25-12-2023',
    '21-01-2024',
    '22-01-2024',
    '25-01-2024',
    '12-02-2024',
    '02-03-2024',
    '12-03-2024',
  ];
  final List<String> expenseList = [
    'Food',
    'Travel',
    'Travel',
    'Medical',
    'Fuel',
    'Travel',
    'Food',
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
        title: Text("My Expenses"),
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
                    child: ExpenseCard(
                      statusText: statusText[index],
                      priceList: priceList[index],
                      centerText: centerText[index],
                      expenseText: expenseText[index],
                      expenseList: expenseList[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
