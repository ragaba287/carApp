import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/orderItem.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
                  height: MediaQuery.of(context).size.height * .06,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asset/logo.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Blue Exit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'الحجوزات',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo-Bold',
                                fontSize: 34,
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
                        Orderitem(),
                        Orderitem(),
                        Orderitem(),
                        Orderitem(),
                        Orderitem(),
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
