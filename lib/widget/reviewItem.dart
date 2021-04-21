import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/widget/ratingbar.dart';

class ReviewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      child: Card(
          elevation: 10,
          shadowColor: Colors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RatingReview(),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'AMAR REZQ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Bmw  x srries '),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              Container(
                  child: Text(
                'If the content is legitimately bigger than the',
                textDirection: TextDirection.rtl,
                maxLines: 3,
              ))
            ],
          )),
    );
  }
}
