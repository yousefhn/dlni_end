import 'package:flutter/material.dart';

import 'one/information.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff6885e3), Color(0xffffffff)],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              stops: [0.3, 1.2]),
        ),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    title: Text(
                      "الأماكن ",
                      style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.white,
                          fontSize: 25),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                ],
                body: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Padding(
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
                                    builder: (context) => first()));
                          },
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
                    );
                  },
                ),
              )),
        ));
  }
}
