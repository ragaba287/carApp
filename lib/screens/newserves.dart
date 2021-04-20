import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/kindwash.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/topbar.dart';
import 'package:flutter_application_car_service/widget/modelbottom.dart';

class Newservece extends StatefulWidget {
  @override
  _NewserveceState createState() => _NewserveceState();
}

class _NewserveceState extends State<Newservece> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer1(),
        key: _scaffoldKey,
        body: SafeArea(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              child: Column(
                children: [
                  Baar(
                    onpress: () => _scaffoldKey.currentState.openEndDrawer(),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .12),
                  TopBar(
                      text: 'Car',
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Kindwash();
                        }));
                      }),
                ],
              ),
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
              height: MediaQuery.of(context).size.height * 0.65,
              child: BottomModel(),
            ),
          ]),
        ));
  }
}
