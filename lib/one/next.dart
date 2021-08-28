import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../home.dart';

class Next extends StatefulWidget {
  Next({Key? key, required this.ph})
      : super(
          key: key,
        );
  late final String ph;

  @override
  NextState createState() => NextState(phone: '$ph');
}

class NextState extends State<Next> {
  String phone;
  NextState({
    required this.phone,
    Key? key,
  });
  void Ph() {
    setState(() {
      phone = widget.ph;
    });
  }

  TextEditingController _phone = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff6885e3), Color(0xffffffff)],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            stops: [0.1, 1]),
      ),
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 350,
                        child: Center(
                          child: Text(
                            'اهلاً وسهلاً,أدخل رمز \nالتفعيل الذي سيصلك برسالة نصية الى الرقم\n ${phone}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color(0xffffffff),
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Form(
                              key: _formkey,
                              child: Container(
                                child: Theme(
                                  data: ThemeData(
                                    inputDecorationTheme: InputDecorationTheme(
                                        fillColor:
                                            Theme.of(context).canvasColor),
                                  ),
                                  child: PinFieldAutoFill(
                                    controller: _phone,
                                    codeLength: 6,
                                    decoration: BoxLooseDecoration(
                                      radius: Radius.circular(16),
                                      textStyle: TextStyle(
                                          fontFamily: 'cairo',
                                          color: Color(0xff202936)),
                                      bgColorBuilder:
                                          FixedColorBuilder(Colors.grey[300]!),
                                      strokeColorBuilder:
                                          FixedColorBuilder(Colors.grey[300]!),
                                      gapSpace: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color(0xff6885e3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RaisedButton(
                              elevation: 0,
                              color: Colors.transparent,
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Text(
                                "إدخال",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
