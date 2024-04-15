import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:demo3/components/halfrounded_box.dart';
import 'package:demo3/feed.dart';
import 'package:demo3/home_page.dart';
import 'package:demo3/profile.dart';
import 'package:demo3/task_page.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<IconData> _icons = [
    Icons.money,
    Icons.shopping_cart,
    Icons.airplane_ticket,
    Icons.camera,
    Icons.book,
    Icons.music_note,
    Icons.movie,
    Icons.restaurant,
    Icons.directions_bike,
  ];

  final List _pages = [
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
    TaskPage(),
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
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 1.5,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: List.generate(
                  9,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: InkWell(
                        onTap: () {
                          print(index);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => _pages[index],
                            ),
                          );
                        },
                        child: HalfRounded(
                          height: 0.05,
                          width: 0.1,
                          containerColor: Colors.blue,
                          child: Center(
                            child: Icon(_icons[index], size: 20),
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
