import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_car_service/screens/authentication.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  var _formKey = GlobalKey<FormState>();
  String name, password, email, phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  height: MediaQuery.of(context).size.height * 0.67,
                  width: MediaQuery.of(context).size.width * 0.94,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.text,
                            enabled: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Full name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              } else if (value.length < 3 ||
                                  value.length > 8 ||
                                  !RegExp('[a-zA-Z]').hasMatch(value)) {
                                return ' valid Name  should between 3 and 8 characters';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              suffixIcon: Icon(Icons.person),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            validator: (emailvalue) {
                              if (emailvalue.isEmpty) {
                                return 'This field is required';
                              }
                              if (!emailvalue.contains('@')) {
                                return " valid email should contain '@'";
                              }
                              if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                              ).hasMatch(emailvalue)) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            onChanged: (v) {
                              setState(() {
                                password = v;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'This field is required';
                              }
                              if (passwordvalue.length < 8) {
                                return 'Password should have at least 6 characters';
                              }

                              return null;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            onChanged: (a) {
                              setState(() {
                                phone = a;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mobile_friendly),
                              hintText: 'mobile number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .06,
                            width: MediaQuery.of(context).size.width * .8,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              elevation: 9,
                              onPressed: () {
                                _submit();
                                //EasyLocalization.of(context).locale =Locale('en', 'US');
                              },
                              color: Colors.red[400],
                              child: Text(
                                'sing up',
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
                          Text(' or sing up With'),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(237, 237, 237, 100),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'asset/google.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('asset/facebook.png'),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('asset/twitter.png'),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account?  '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return Authenticationscreen();
                                  }));
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      color: Colors.red[900],
                                      decoration: TextDecoration.underline),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
                Container(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'By signing up, you are agree with our  ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    Dio dio = Dio();
    String base_url =
        "http://10.0.0.0/laundry/api/v1/users/create?api_password= RjikEbtcypXTao7a38NWb";
    var response = await dio.post(base_url, data: {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password
    });
    print(response);
  }
}
