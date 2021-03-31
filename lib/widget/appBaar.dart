import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/notification.dart';

// ignore: must_be_immutable
class Baar extends StatelessWidget {
  Function onpress;

  Baar({this.onpress});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.3)),
          child: FlatButton(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .55,
        ),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.3)),
          child: FlatButton(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            },
          ),
        ),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.3)),
          child: TextButton(
              child: Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
              onPressed: onpress),
        ),
      ],
    );
  }
}
