import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Baar(
        onpress: () {},
      )),
    );
  }
}
