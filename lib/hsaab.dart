import 'package:example/myAcount.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'aboutus.dart';
import 'one/login.dart';

class Hs extends StatefulWidget {
  const Hs({Key? key}) : super(key: key);

  @override
  _HsState createState() => _HsState();
}

class _HsState extends State<Hs> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                'الحساب',
                style: TextStyle(fontFamily: "Cairo", fontSize: 25),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 230,
                      child: Lottie.asset(
                        'assets/lo/1.json',
                        repeat: true,
                        controller: _controller,
                        onLoaded: (composition) {
                          // Configure the AnimationController with the duration of the
                          // Lottie file and start the animation.
                          _controller
                            ..duration = composition.duration
                            ..forward();
                        },
                      ),
                      // Container(
                      //   width: 200,
                      //   height: 200,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //     image: AssetImage('assets/images/3.png'),
                      //   )),
                      // ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => myacount()));
                            },
                            leading: Icon(
                              Icons.person_outline,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "حسابي",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUsPage()));
                          },
                          leading: Icon(
                            Icons.info_outline,
                            color: Color(0xff6885e3),
                          ),
                          title: Text(
                            "من نحن",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 25,
                            ),
                          ),
                          trailing: Icon(
                            Icons.navigate_next_outlined,
                            color: Color(0xff6885e3),
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      elevation: 0.8,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.9),
                                      actionsPadding:
                                          EdgeInsets.only(bottom: 20),
                                      contentPadding: EdgeInsets.only(
                                        top: 0,
                                      ),
                                      contentTextStyle: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                      content: Container(
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "هل انت متأكد",
                                              style: TextStyle(
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 30,
                                              child: FlatButton(
                                                child: Text(
                                                  'نعم',
                                                  style: TextStyle(
                                                      fontFamily: "Cairo",
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyHomePage(
                                                                title: "",
                                                              )));
                                                },
                                              ),
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xff6885e3),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              child: FlatButton(
                                                child: Text(
                                                  'لا',
                                                  style: TextStyle(
                                                      fontFamily: "Cairo",
                                                      color: Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xff6885e3),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            },
                            leading: Icon(
                              Icons.logout_outlined,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "تسجيل الخروج",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: ListTile(
                            onTap: () {},
                            leading: Icon(
                              Icons.share_outlined,
                              color: Color(0xff6885e3),
                            ),
                            title: Text(
                              "مشاركة التطبيق",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 25,
                              ),
                            ),
                            trailing: Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xff6885e3),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
