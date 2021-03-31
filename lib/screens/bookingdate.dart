import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Bookingdate extends StatefulWidget {
  @override
  _BookingdateState createState() => _BookingdateState();
}

class _BookingdateState extends State<Bookingdate> {
  CalendarController _controller;
  ScrollController _controllers;

  List<String> hours = [];
  DateTime selectedDate;
  bool _selectedchoice;
  int hoursindex;
  int aparmentindex;

  final List<String> apartment = <String>[
    'الحارة \nالاولى',
    'الحارة \nالثانية',
    'الحارة \nالثالثة',
    'الحارة \nالرابعة',
  ];

  final List<String> entries = <String>[
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllers = ScrollController();
    _controller = CalendarController();
    selectedDate = DateTime.now();
    _selectedchoice = false;
    hours = [
      DateFormat('10:00 ').format(selectedDate),
      DateFormat('11:00 ').format(selectedDate),
      DateFormat('12:00 ').format(selectedDate),
      DateFormat('13:00 ').format(selectedDate),
      DateFormat('14:00 ').format(selectedDate),
      DateFormat('17:00 ').format(selectedDate),
      DateFormat('18:00 ').format(selectedDate),
    ];
    final List<String> apartment = <String>[
      'الحارة \nالاولى',
      'الحارة \nالثانية',
      'الحارة \nالثالثة',
      'الحارة \nالرابعة',
    ];
    int aparmentindex = 0;

    hoursindex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/backimage.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * .7,
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: TableCalendar(
                    rowHeight: 50,
                    headerStyle: HeaderStyle(
                        formatButtonTextStyle: TextStyle(color: Colors.white),
                        formatButtonVisible: false,
                        formatButtonShowsNext: true,
                        centerHeaderTitle: true),
                    startingDayOfWeek: StartingDayOfWeek.saturday,
                    initialCalendarFormat: CalendarFormat.twoWeeks,
                    calendarStyle: CalendarStyle(),
                    headerVisible: true,
                    calendarController: _controller,
                  ),
                ),
                Expanded(flex: 1, child: choicechip()),
              ]),
            ),
          ]),
        ));
  }

  Widget choicechip() {
    final orientation = MediaQuery.of(context).orientation;
    return Center(
      child: GridView.builder(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2,
            mainAxisSpacing: 0,
            childAspectRatio: 2,
            crossAxisCount: (orientation == Orientation.landscape) ? 2 : 4),
        shrinkWrap: true,
        itemCount: hours.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
              shape: StadiumBorder(side: BorderSide(color: Colors.red)),
              onSelected: (bool selected) {
                setState(() {
                  hoursindex = selected ? index : null;
                });
              },
              backgroundColor: Colors.white,
              selectedColor: Colors.red,
              selected: hoursindex == index,
              label: Text(hours[index]),
              labelStyle: TextStyle(fontSize: 18, color: Colors.black));
        },
      ),
    );
  }
}

// Group: Group 3337
