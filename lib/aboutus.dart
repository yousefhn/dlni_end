import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff6885e3),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 245,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      child: Text(
                        'اتصل بنا',
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            minLeadingWidth: 10,
                            leading: Icon(
                              Icons.dashboard,
                              color: Color(0xff6885e3),
                            ),
                            onTap: () {},
                            title: Text(
                              " الموقع",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              'www.Dlni.com',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            minLeadingWidth: 10,
                            leading: Icon(
                              Icons.call,
                              color: Color(0xff6885e3),
                            ),
                            onTap: () {},
                            title: Text(
                              " الهاتف",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              '0945217248',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            minLeadingWidth: 10,
                            leading: Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff6885e3),
                            ),
                            onTap: () {},
                            title: Text(
                              " العنوان",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              'Almazeh',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            minLeadingWidth: 10,
                            leading: Icon(
                              Icons.create,
                              color: Color(0xff6885e3),
                            ),
                            onTap: () {},
                            title: Text(
                              "طور من قبل",
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            trailing: Text(
                              'MYM',
                              style: TextStyle(color: Colors.white),
                            )),
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
