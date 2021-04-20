import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/bookingdate.dart';
import 'package:flutter_application_car_service/widget/KindwishItem.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/servece.dart';
import 'package:flutter_application_car_service/widget/topbar.dart';

class Kindwash extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer1(),
      key: _scaffoldKey,
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/backimage.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Baar(
                      onpress: () => _scaffoldKey.currentState.openEndDrawer(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .2),
                    TopBar(
                      back: () {
                        Navigator.of(context).pop();
                      },
                      text: 'Serviece',
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Bookingdate();
                        }));
                      },
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .6,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: ListView(
                  children: [
                    KindWishItem(),
                    KindWishItem(),
                    KindWishItem(),
                    KindWishItem(),
                    KindWishItem(),
                    KindWishItem(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
