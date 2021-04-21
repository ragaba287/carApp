import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/bookingdate.dart';

class WishItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Bookingdate();
        }));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                  value: true,
                  groupValue: true,
                  onChanged: null,
                  activeColor: Colors.blue,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "غسيل كلي للسيارة",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "يشمل علي غسيل ببخار الماء المظغوط لهيكل السيارة",
                            style: TextStyle(
                              color: Colors.pinkAccent.shade100,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "10 نقاط",
                                    style: TextStyle(
                                        color: Color.fromRGBO(220, 79, 137, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "700جنية",
                                    style: TextStyle(
                                        color: Color.fromRGBO(220, 79, 137, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset("asset/logo.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
