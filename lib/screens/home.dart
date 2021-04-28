import 'package:flutter/material.dart';
import '../Model/UserCreate.dart';
import '../dioHelper.dart';
import '../screens/Profile.dart';
import '../screens/myorders.dart';
import '../screens/newserves.dart';
import '../screens/points.dart';
import '../screens/reveiw.dart';
import '../widget/appBaar.dart';
import '../widget/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

DioHelper _dioHelper = DioHelper();
Users _users = Users();

class Car extends StatefulWidget {
  Car({this.id = 1});
  final int id;

  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  void initState() {
    super.initState();

    _dioHelper.showById(widget.id).then(
          (value) => setState(
            () {
              _users.name = value.data['user']['name'];
              _users.phone = value.data['user']['phone'];
              _users.email = value.data['user']['email'];
            },
          ),
        );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer1(),
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/backimage.png'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(child: Baar(
                    onpress: () async {
                      _scaffoldKey.currentState.openEndDrawer();
                    },
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcom back\n${_users.name ?? ''}',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  headerProfile(context, _users),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .20,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    width: MediaQuery.of(context).size.width * .97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                              child: SvgPicture.asset(
                            'asset/icons/Illustration 2.svg',
                            fit: BoxFit.contain,
                          )),
                        ),
                        Container(
                          child: Container(
                            width: 100,
                            height: 80,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromRGBO(254, 112, 98, 100),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Newservece();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Text(
                                      'New\nservice',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .20,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    width: MediaQuery.of(context).size.width * .97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(right: 20),
                              child: SvgPicture.asset(
                                'asset/icons/pointssvg.svg',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          child: Container(
                            width: 100,
                            height: 80,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromRGBO(254, 112, 98, 100),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return Points1();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Text(
                                      'points',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .20,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    width: MediaQuery.of(context).size.width * .97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(right: 20),
                              child: SvgPicture.asset(
                                'asset/icons/2684117.svg',
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          child: Container(
                            width: 100,
                            height: 80,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              color: Color.fromRGBO(254, 112, 98, 100),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return Review();
                                }));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Text(
                                      'Review',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget headerProfile(BuildContext context, Users users) {
  return Container(
    height: MediaQuery.of(context).size.height * .20,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
    padding: EdgeInsets.only(right: 10, left: 10, top: 40),
    width: MediaQuery.of(context).size.width * .97,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return Profile(
            users: users,
          );
        }));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: "profile_picture",
            child: Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 3, color: Colors.black)),
            ),
          ),
          Expanded(
            child: Column(children: [
              ListTile(
                leading: Text(
                  _users.name ?? '',
                  style: TextStyle(color: Colors.black),
                ),
                title: Row(
                  children: [
                    IconButton(
                      color: Colors.blue[900],
                      onPressed: () {},
                      icon: Icon(Icons.call),
                    ),
                    IconButton(
                        onPressed: () {},
                        color: Colors.blue[900],
                        icon: Icon(
                          Icons.message,
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(254, 112, 98, 100),
                        borderRadius: BorderRadius.circular(40)),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return MyOrders();
                        // }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'my orders',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    ),
  );
}
