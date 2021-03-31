import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/drawer.dart';

class Points1 extends StatefulWidget {
  @override
  _Points1State createState() => _Points1State();
}

class _Points1State extends State<Points1> {
  TabController _tabController;

  final List<String> entries = <String>[
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points',
    '50 points'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Points',
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(
                isScrollable: true,
                controller: _tabController,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('shopping'),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('entertainment'),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("foods"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("all services"),
                    ),
                  ),
                ]),
          ),
          endDrawer: Drawer1(),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/backimage.png',
                    ),
                    fit: BoxFit.cover)),
            child: ListView.builder(
                itemCount: entries.length,
                padding: EdgeInsets.only(bottom: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      borderOnForeground: true,
                      shadowColor: Colors.grey,
                      elevation: 9,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .2,
                        width: MediaQuery.of(context).size.width * .95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'asset/mac.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 8,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Today 12/2/2020',
                                    style: TextStyle(
                                        fontFamily: 'Cairo-Regular',
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'MacDonals',
                                    style: TextStyle(
                                        fontFamily: ' Cairo-SemiBold',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '50 points',
                                    style: TextStyle(
                                        fontFamily: 'Cairo-SemiBold',
                                        color: Colors.red,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      child: Image.asset(
                                        'asset/maclogo.png',
                                      ),
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: FlatButton(
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text('Add service'),
                                        onPressed: () {}),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
