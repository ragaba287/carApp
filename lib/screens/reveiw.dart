import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/ratingbar.dart';
import 'package:flutter_application_car_service/widget/reviewItem.dart';

class Review extends StatelessWidget {
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
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      'التقييمات',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cairo-Bold',
                          fontSize: 34,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.776,
                        padding: EdgeInsets.only(top: 20),
                        margin: EdgeInsets.all(10),
                        child: ListView(
                          children: [
                            ReviewItem(),
                            ReviewItem(),
                            ReviewItem(),
                            ReviewItem(),
                            ReviewItem(),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
