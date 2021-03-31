import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/kindwash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:circular_check_box/circular_check_box.dart';

class BottomModel extends StatefulWidget {
  @override
  _BottomModelState createState() => _BottomModelState();
}

class _BottomModelState extends State<BottomModel> {
  bool _value = false;
  bool _valuecar = false;
  bool _valuebike = false;
  bool _valuepickup = false;
  bool _valuewagon = false;
  DateTime selectedDate;

  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
    selectedDate = DateTime(DateTime.daysPerWeek);
  }

  void _valueChanged(bool value) {
    setState(() => _value = value);
    if (value == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Kindwash();
      }));
      _valuecar = false;
      _valuebike = false;
      _valuepickup = false;
      _valuewagon = false;
    }
  }

  void _valuecarChanged(bool value) {
    setState(() => _valuecar = value);
    if (value == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Kindwash();
      }));
      _value = false;
      _valuebike = false;
      _valuepickup = false;
      _valuewagon = false;
    }
  }

  void _valuebikeChanged(bool value) {
    setState(() => _valuebike = value);
    if (value == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Kindwash();
      }));

      _valuecar = false;
      _value = false;
      _valuepickup = false;
      _valuewagon = false;
    }
  }

  void _valuepickupChanged(bool value) {
    setState(() => _valuepickup = value);
    if (value == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Kindwash();
      }));
      _valuecar = false;
      _valuebike = false;
      _value = false;
      _valuewagon = false;
    }
  }

  void _valuewagonChanged(bool value) {
    setState(() => _valuewagon = value);
    if (value == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Kindwash();
      }));
      _valuecar = false;
      _valuebike = false;
      _valuepickup = false;
      _value = false;
    }
  }

  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * .2,
        ),
      ),
      Expanded(
        flex: 8,
        child: Container(
          width: MediaQuery.of(context).size.width * 85,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: Container(
            padding: EdgeInsets.all(11),
            child: GridView.count(
                crossAxisSpacing: 2,
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                scrollDirection: Axis.vertical,
                children: [
                  Column(children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(213, 230, 254, 100)),
                            height: MediaQuery.of(context).size.height * .10,
                            width: MediaQuery.of(context).size.width * .3,
                            child: SvgPicture.asset(
                              'asset/icons/car-1.svg',
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                    ),
                    Expanded(
                      child: CircularCheckBox(
                        value: _value,
                        onChanged: _valueChanged,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(213, 230, 254, 100)),
                            height: MediaQuery.of(context).size.height * .10,
                            width: MediaQuery.of(context).size.width * .3,
                            child: SvgPicture.asset(
                              'asset/icons/car.svg',
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                    ),
                    Expanded(
                      child: CircularCheckBox(
                        value: _valuecar,
                        onChanged: _valuecarChanged,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(213, 230, 254, 100)),
                            height: MediaQuery.of(context).size.height * .10,
                            width: MediaQuery.of(context).size.width * .3,
                            child: SvgPicture.asset(
                              'asset/icons/bike.svg',
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                    ),
                    Expanded(
                      child: CircularCheckBox(
                        value: _valuebike,
                        onChanged: _valuebikeChanged,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(213, 230, 254, 100)),
                            height: MediaQuery.of(context).size.height * .10,
                            width: MediaQuery.of(context).size.width * .3,
                            child: SvgPicture.asset(
                              'asset/icons/pickup.svg',
                              fit: BoxFit.scaleDown,
                            )),
                      ),
                    ),
                    Expanded(
                      child: CircularCheckBox(
                        value: _valuepickup,
                        onChanged: _valuepickupChanged,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(213, 230, 254, 100)),
                          height: MediaQuery.of(context).size.height * .10,
                          width: MediaQuery.of(context).size.width * .3,
                          child: SvgPicture.asset(
                            'asset/icons/station-wagon.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CircularCheckBox(
                        value: _valuewagon,
                        onChanged: _valuewagonChanged,
                      ),
                    ),
                  ]),
                ]),
          ),
        ),
      ),
    ]);
  }
}
