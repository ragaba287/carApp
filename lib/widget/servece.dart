import 'package:flutter/material.dart';

class Servec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        height: MediaQuery.of(context).size.height * .1,
      ),
      Card(
        shadowColor: Colors.grey,
        elevation: 9,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                title: Text('inside cleaning'),
                subtitle: Text('points :10'),
                trailing: Radio(
                  value: true,
                  groupValue: true,
                  onChanged: null,
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
