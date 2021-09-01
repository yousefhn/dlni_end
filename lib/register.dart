import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'one/next.dart';

class register extends StatefulWidget {
  register({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<register> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  TextEditingController _conpass = TextEditingController();
  bool ishidden = true;
  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff6885e3), Color(0xffffffff)],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            stops: [0.0, 1.2]),
      ),
      child: Container(
        child: SafeArea(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'إنشاء حساب',
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color(0xff202936),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formkey,
                        child: AutofillGroup(
                          child: Column(
                            children: [
                              //child:

                              TextFormField(
                                validator: (_email) => _email != null &&
                                        !EmailValidator.validate(_email)
                                    ? 'أدخل بريد صحيح '
                                    : null,
                                // {
                                //   if (_email.toString().length < 10) {
                                //     return 'أدخل بريد صحيح ';
                                //   } else {
                                //     return null;
                                //   }
                                // },

                                controller: _email,
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xff6885e3)),
                                keyboardType: TextInputType.emailAddress,
                                autofillHints: [AutofillHints.email],
                                textAlign: TextAlign.right,

                                decoration: InputDecoration(
                                  fillColor: Color(0xffffffff).withOpacity(0.5),
                                  // enabled: true,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _email.clear();
                                        });
                                      },
                                      icon: Icon(Icons.clear)),
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    size: 30,
                                    color: Color(0xff6885e3),
                                  ),

                                  labelText: "البريد الالكتروني ",
                                  //  errorText: _emp,
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),
                                  filled: true,
                                  labelStyle: TextStyle(
                                    fontFamily: "Cairo",
                                    height: 0.6,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff202936).withOpacity(0.9),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                validator: (_pass) =>
                                    _pass != null && _pass.length < 5
                                        ? 'أدخل خمسة احرف على الاقل '
                                        : null,
                                controller: _pass,
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xff6885e3)),
                                //keyboardType: TextInputType.,
                                autofillHints: [AutofillHints.password],
                                textAlign: TextAlign.right,
                                obscureText: ishidden,
                                decoration: InputDecoration(
                                  fillColor: Color(0xffffffff).withOpacity(0.5),
                                  // enabled: true,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          ishidden = !ishidden;
                                        });
                                      },
                                      icon: ishidden
                                          ? Icon(Icons.visibility_off_outlined)
                                          : Icon(Icons.visibility_outlined)),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                    color: Color(0xff6885e3),
                                  ),

                                  labelText: "كلمة المرور ",
                                  //  errorText: _emp,
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),
                                  filled: true,
                                  labelStyle: TextStyle(
                                    fontFamily: "Cairo",
                                    height: 0.6,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff202936).withOpacity(0.9),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                validator: (_pass) =>
                                    _pass != null && _pass.length < 5
                                        ? 'أدخل خمسة احرف على الاقل '
                                        : null,
                                controller: _conpass,
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xff6885e3)),
                                //keyboardType: TextInputType.,
                                autofillHints: [AutofillHints.password],

                                textAlign: TextAlign.right,
                                obscureText: ishidden,
                                decoration: InputDecoration(
                                  fillColor: Color(0xffffffff).withOpacity(0.5),
                                  // enabled: true,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          ishidden = !ishidden;
                                        });
                                      },
                                      icon: ishidden
                                          ? Icon(Icons.visibility_off_outlined)
                                          : Icon(Icons.visibility_outlined)),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                    color: Color(0xff6885e3),
                                  ),

                                  labelText: "اعد كتابة كلمة المرور ",
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.red,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff6885e3),
                                    ),
                                  ),
                                  filled: true,
                                  labelStyle: TextStyle(
                                    fontFamily: "Cairo",
                                    height: 0.6,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff202936).withOpacity(0.9),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Color(0xff6885e3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: RaisedButton(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  onPressed: () {
                                    setState(() {
                                      if (_formkey.currentState!.validate()) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                elevation: 0.8,
                                                backgroundColor: Colors.white
                                                    .withOpacity(0.9),
                                                actionsPadding:
                                                    EdgeInsets.only(bottom: 20),
                                                contentPadding: EdgeInsets.only(
                                                  top: 0,
                                                ),
                                                contentTextStyle: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                                content: Container(
                                                  height: 150,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "تأكد من معلوماتك ",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Cairo"),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text("${_email.text}"),
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        height: 30,
                                                        child: FlatButton(
                                                          child: Text(
                                                            'نعم',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Cairo"),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.pushReplacement(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) => Next(
                                                                        ph: _email
                                                                            .text)));
                                                          },
                                                        ),
                                                        width: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff6885e3),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30,
                                                        child: FlatButton(
                                                          child: Text(
                                                            'لا',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Cairo"),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                        width: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff6885e3),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              );
                                            });
                                      }
                                    });
                                  },
                                  child: Text(
                                    "التالي",
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
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Center(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('bjhvhjjjcjjjjjn'),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('fhfjvjh'))
                          ],
                        ),
                      )),
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
