import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/kindwash.dart';
import 'package:flutter_application_car_service/widget/notificationitem.dart';
import 'package:flutter_application_car_service/widget/topbar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/backimage.png'), fit: BoxFit.cover)),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .17,
            ),
            Text(
              'الاشعارات',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo-Bold',
                  fontSize: 34,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * .7,
                padding: EdgeInsets.only(top: 10),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    NotificationItem(),
                    NotificationItem(),
                    NotificationItem(),
                    NotificationItem(),
                    NotificationItem(),
                    NotificationItem(),
                    NotificationItem(),
                  ],
                ),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
