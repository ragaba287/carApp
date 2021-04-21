import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/Profile.dart';
import 'package:flutter_application_car_service/widget/appBaar.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';
import 'package:flutter_application_car_service/widget/topbar.dart';

class CarDetails extends StatelessWidget {
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
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        child: TopBar(
                          back: () {
                            Navigator.of(context).pop();
                          },
                          text: 'السيارة ',
                          onpress: () {},
                        ),
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
                    padding: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .97,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "نوع السيارة ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(220, 79, 137, 0.7),
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "BMW",
                                  style: TextStyle(
                                    color: Color.fromRGBO(220, 79, 137, 0.7),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  "الكيلومترات الحالية",
                                  style: TextStyle(
                                      color: Color.fromRGBO(220, 79, 137, 0.7),
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "1452",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  "اخر ميعاد لتغير الزيت ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(220, 79, 137, 0.7),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Today - 31 Dec 2021",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  "الميعاد القادم",
                                  style: TextStyle(
                                    color: Color.fromRGBO(220, 79, 137, 0.7),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Today - 31 Dec 2021",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(254, 112, 98, 100),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_back,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            "تعديل",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
