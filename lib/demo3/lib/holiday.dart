import 'package:flutter/material.dart';
import 'components/holiday_card.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({Key? key}) : super(key: key);

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
  String selectedYear = 'Select Year';
  final List<String> holidays = [
    '1st January',
    '23rd March',
    '31st March',
    '1st May',
    '14th August',
    '25th December',
  ];
   final List<String> holidaysDesc = [
    'New Year',
    'Pakistan Day',
    'Easter',
    'Labour Day',
    'Pakistan\'s Independence Day',
    '25th December',
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

    return Scaffold(
      appBar: AppBar(
        title: Text("Holidays"),
      ),
      body: Column(
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
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: holidays.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HolidayCard(
                    day: holidays[index],
                    desc: holidaysDesc[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
