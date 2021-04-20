import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final Function onpress;
  final Function back;
  final String text;

  const TopBar({Key key, this.onpress, this.back, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          splashColor: Colors.white,
          disabledColor: Colors.grey,
          hoverColor: Colors.white,
          color: Colors.white,
          iconSize: 34,
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: back,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 34,
        )
      ],
    );
  }
}
