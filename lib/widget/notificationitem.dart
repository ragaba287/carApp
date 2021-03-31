import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Blue Exit",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Text(
                      "Today - 31 Dec 2021",
                      style: TextStyle(color: Colors.pinkAccent.shade100),
                    ),
                    Text(
                      "لديك موعد بعد 30 دقيقة",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
              Image.asset("asset/logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
