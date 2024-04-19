import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Event {
  final String title;
  Event({required this.title});

  @override
  String toString() => this.title;
}

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late Map<DateTime, List<Event>> selectedEvents;

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  //Holds the states
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  //Text Controller
  TextEditingController eventController = TextEditingController();

  //Events
  List<Event> getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  //Garbage collector
  @override
  void dispose() {
    eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2015),
                lastDay: DateTime.utc(2035),
                focusedDay: DateTime.now(),
                calendarFormat: format,
                /*Create the option to change format
                    onFormatChanged: (CalendarFormat format) {
                      setState(() {
                        format: format;
                      });
                    },*/
                //Option to select day with taps and color customization
                selectedDayPredicate: (day) {
                  return isSameDay(selectedDay, day);
                },
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                },

                eventLoader: getEventsfromDay,

                //Calendar Style:
                calendarStyle: const CalendarStyle(
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 113, 200),
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: TextStyle(color: Colors.white),
                  todayDecoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  todayTextStyle: TextStyle(color: Colors.white),
                  defaultDecoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  weekendDecoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  formatButtonShowsNext: false,
                ),
                /*
                  const Center(
                  child: Text('Calendar Coming Soon...'),
                  */
              ),
              ...getEventsfromDay(selectedDay).map(
                (Event event) => ListTile(
                  title: Text(
                    "Event Name: $event",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 87, 128),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              iconColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 151, 204, 229),
              title: const Text(
                "Add Event",
                style: TextStyle(color: Colors.white),
              ),
              content: TextFormField(
                controller: eventController,
              ),
              actions: [
                TextButton(
                  child: const Text(
                    "Nope",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {
                    if (eventController.text.isEmpty)
                      {
                        //Navigator.pop(context)
                      }
                    else
                      {
                        if (selectedEvents[selectedDay] != null)
                          {
                            selectedEvents[selectedDay]?.add(
                              Event(title: eventController.text),
                            )
                          }
                        else
                          {
                            selectedEvents[selectedDay] = [
                              Event(title: eventController.text)
                            ]
                          },
                      },
                    Navigator.pop(context),
                    eventController.clear(),
                    setState(() {})
                  },
                ),
              ],
            ),
          ),
          label: const Text(
            "Add Event",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
