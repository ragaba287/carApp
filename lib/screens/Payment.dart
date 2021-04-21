import 'package:flutter/material.dart';

class PaymentCheckout extends StatefulWidget {
  @override
  _PaymentCheckoutState createState() => _PaymentCheckoutState();
}

enum Mony { cash, visa }

class _PaymentCheckoutState extends State<PaymentCheckout> {
  Mony mony = Mony.cash;
  bool visa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 25,
              right: 0,
              child: FloatingActionButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .17,
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
                        Container(
                          width: MediaQuery.of(context).size.width * .97,
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
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
                                  Center(
                                      child: Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "asset/logo.png"))),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Blue Exit",
                                        style: TextStyle(fontSize: 23),
                                      ),
                                    ],
                                  )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("عمار رزق    "),
                                      SizedBox(
                                        width: 10,
                                        child: Text("-:"),
                                      ),
                                      Text("اسم المستخدم"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        height: 100,
                                        child: Text(
                                            "الطريق الى شركه سنده٢١ ب شارع جامعه الدول العربيه من محطه متروالدقى"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        child: Text("-:"),
                                      ),
                                      Text("الموقع الجغرافي"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("01280816239    "),
                                      SizedBox(
                                        width: 10,
                                        child: Text("-:"),
                                      ),
                                      Text("رقم التليفون "),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .97,
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
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
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "وسيلة الدفع ",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Radio<Mony>(
                                            value: Mony.cash,
                                            groupValue: mony,
                                            onChanged: (Mony val) {
                                              setState(() {
                                                mony = val;
                                                visa = false;
                                              });
                                            },
                                            activeColor: Colors.blue,
                                          ),
                                          Text("كاش"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Radio<Mony>(
                                            value: Mony.visa,
                                            groupValue: mony,
                                            onChanged: (val) {
                                              setState(() {
                                                mony = val;
                                                visa = true;
                                              });
                                            },
                                            activeColor: Colors.blue,
                                          ),
                                          Text("فيزا"),
                                        ],
                                      ),
                                      visa ? Text("data") : Container()
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
