import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        CircleAvatar,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        FontStyle,
        FontWeight,
        Form,
        FractionalOffset,
        GestureDetector,
        Icon,
        Icons,
        Image,
        InkWell,
        InputDecoration,
        LinearGradient,
        MainAxisAlignment,
        MaterialPageRoute,
        MediaQuery,
        OutlineInputBorder,
        Radius,
        RaisedButton,
        RoundedRectangleBorder,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextDecoration,
        TextFormField,
        TextInputType,
        TextStyle,
        Widget;
import 'package:flutter_application_car_service/screens/home.dart';
import 'package:flutter_svg/svg.dart';

class Authenticationscreen extends StatefulWidget {
  @override
  _AuthenticationscreenState createState() => _AuthenticationscreenState();
}

class _AuthenticationscreenState extends State<Authenticationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                    Color.fromRGBO(249, 249, 254, 30),
                    Color.fromRGBO(64, 66, 226, 100),
                  ])),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .24,
                      child: SvgPicture.asset(
                        'asset/icons/Illustration.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                enabled: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  suffixIcon: Icon(Icons.person),
                                  hintText: 'Mobile Number',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  hintText: 'password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * .06,
                                width: MediaQuery.of(context).size.width * .7,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  elevation: 9,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return Car();
                                    }));
                                  },
                                  color: Colors.red[400],
                                  child: Text(
                                    'LoGin',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  child: Text(
                                    'Forget Password ?',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(' or log In With'),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset('asset/facebook.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset('asset/google.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      child: Image.asset('asset/twitter.png'),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Dont have an account ?  '),
                                  GestureDetector(
                                    child: Text(
                                      'Register now',
                                      style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ))),
    );
  }
}
