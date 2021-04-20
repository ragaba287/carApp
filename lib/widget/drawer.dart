import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/WishDetails.dart';
import 'package:flutter_application_car_service/screens/home.dart';
import 'package:flutter_application_car_service/screens/myorders.dart';

class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), topLeft: Radius.circular(100)),
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.all(10),
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    child: Text(
                                      "A",
                                      style: TextStyle(fontSize: 40.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Abhishek Mishra",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "bmw Series",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                )
                              ],
                            ),
                          ),
                        ]),
                    ListTile(
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Car();
                        }));
                      },
                    ),
                    ListTile(
                      title: Text(
                        "My Orders",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MyOrders();
                        }));
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Points",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        "Ratings",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        "Log Out",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/nav.png"),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
