import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/Payment.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/topbar.dart';
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
  int currentIndex = 2;

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

    hoursindex;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer1(),
        body: SafeArea(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/backimage.png'),
                      fit: BoxFit.cover)),
            ),
            Column(
              children: [
                Container(
                    child: Baar(
                  onpress: () => _scaffoldKey.currentState.openEndDrawer(),
                )),
                Expanded(child: SizedBox()),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TopBar(
                    back: () {
                      Navigator.of(context).pop();
                    },
                    text: 'حجز الموعد',
                    onpress: () {},
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
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
                            formatButtonTextStyle:
                                TextStyle(color: Colors.white),
                            formatButtonVisible: false,
                            formatButtonShowsNext: true,
                            centerHeaderTitle: true),
                        startingDayOfWeek: StartingDayOfWeek.saturday,
                        initialCalendarFormat: CalendarFormat.week,
                        calendarStyle: CalendarStyle(),
                        headerVisible: true,
                        calendarController: _controller,
                      ),
                    ),
                    Expanded(flex: 1, child: choicechip()),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: currentIndex == index
                                  ? workerimage(true)
                                  : workerimage(false));
                        },
                      ),
                    )
                  ]),
                ),
              ],
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
        shrinkWrap: false,
        itemCount: hours.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
              shape: StadiumBorder(side: BorderSide(color: Colors.red)),
              onSelected: (bool selected) {
                setState(() {
                  if (index == hoursindex) {
                    print("error");
                  } else {
                    hoursindex = selected ? index : null;

                    print(
                        hours[hoursindex] + _controller.selectedDay.toString());
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return PaymentCheckout();
                    }));
                  }
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

  Widget workerimage(bool selected) {
    return Container(
      height: 50,
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: selected ? Colors.black54 : Colors.white,
          borderRadius: BorderRadius.circular(90),
          image: DecorationImage(image: AssetImage("asset/twitter.png"))),
    );
  }
}

// Group: Group 3337
