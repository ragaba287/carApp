import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/WashItemDetails.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/orderItem.dart';

class WishDetails extends StatefulWidget {
  @override
  _WishDetailsState createState() => _WishDetailsState();
}

class _WishDetailsState extends State<WishDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer1(),
        key: _scaffoldKey,
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
                Baar(
                  onpress: () => _scaffoldKey.currentState.openEndDrawer(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'غسيل بالماء المضغوط',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo-Bold',
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                        WishItemDetails(),
                        WishItemDetails(),
                        WishItemDetails(),
                        WishItemDetails(),
                        WishItemDetails(),
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
