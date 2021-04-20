import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingReview extends StatelessWidget {
  final double rating = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$rating',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        RatingBar.builder(
          onRatingUpdate: null,
          initialRating: rating / 2,
          allowHalfRating: true,
          ignoreGestures: true,
          itemBuilder: (context, index) {
            return Icon(
              Icons.star,
              color: Colors.amber,
            );
          },
          itemSize: 30,
        )
      ],
    );
  }
}
