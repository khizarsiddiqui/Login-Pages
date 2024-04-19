import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:demo3/add_leave.dart';
import 'package:demo3/add_payment.dart';
import 'package:demo3/add_task.dart';
import 'package:demo3/create_order.dart';
import 'package:demo3/create_visit.dart';
import 'package:demo3/feed.dart';
import 'package:demo3/home_page.dart';
import 'package:demo3/profile.dart';
import 'package:demo3/task_page.dart';
import 'package:flutter/material.dart';
import 'add_expense.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<IconData> _icons = [
    Icons.payments_outlined,
    Icons.list_alt_outlined,
    Icons.transcribe_outlined,
    Icons.list_alt_outlined,
    Icons.bed_outlined,
    Icons.currency_exchange_outlined,
  ];

  final List _pages = [
    AddPayment(),
    AddTask(),
    CreateVisit(),
    CreateOrder(),
    AddLeave(),
    ApplyExpense(),
  ];
  final List<String> _pagesText = [
    "Payment Entry",
    "Create Task",
    "Create Visit",
    "Create Order",
    "Apply Leave",
    "Apply Expense",
  ];
  List<Widget> _screens = [
    HomePage(),
    TaskPage(),
    FeedPage(),
    ProfileScreen(),
  ];
  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.task_outlined,
    Icons.dock_outlined,
    Icons.man,
  ];
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          mysheet(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 45,
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            iconList[index],
            size: 24,
            color: isActive ? Colors.blueAccent : Colors.lightBlueAccent,
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
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
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 2.0,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 5),
                children: List.generate(
                  6,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => _pages[index],
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(_icons[index], size: 25),
                              Text(
                                _pagesText[index],
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
