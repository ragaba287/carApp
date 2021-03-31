import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/ratingbar.dart';

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
                      height: MediaQuery.of(context).size.height * .25,
                      padding: EdgeInsets.only(top: 20),
                      margin: EdgeInsets.all(10),
                      child: Card(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RatingReview(),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'AMAR REZQ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Bmw  x srries '),
                                      ]),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  child: Text(
                                'If the content is legitimately bigger than the',
                                textDirection: TextDirection.rtl,
                                maxLines: 3,
                              ))
                            ],
                          )),
                    )
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
