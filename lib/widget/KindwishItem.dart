import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/WishDetails.dart';

class KindWishItem extends StatelessWidget {
  bool radiovalue = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return WishDetails();
          }));
        },
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
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text(
                            "غسيل بالماء المضغوط",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "متوسط وقت التنظيف من 30-40 دقيقة",
                                style: TextStyle(
                                    color: Colors.pinkAccent.shade100),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset("asset/logo.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
