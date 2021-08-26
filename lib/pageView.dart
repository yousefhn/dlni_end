import 'package:flutter/material.dart';
//import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'one/login.dart';

class pageView extends StatelessWidget {
  pageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6885e3), Color(0xffffffff)],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: [0.0, 1.2]),
            ),
          ),
          bodyWidget: Center(
            child: Text(
              'قم بالإطلاع على جميع الأماكن الموجودة حولك وتعرف على طريق الوصول إليها والمسافة التي تفصلك عنها ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    )
                  ],
                  fontSize: 20),
            ),
          ),
          image: Image.asset(
            "assets/images/55.png",
            height: 210.0,
            width: 230.0,
            fit: BoxFit.fill,
          ),
          titleWidget: Text(
            "تعرف على ماحولك",
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6885e3), Color(0xffffffff)],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: [0.0, 1.2]),
            ),
          ),
          image: Image.asset(
            "assets/images/58.png",
            height: 245,
            width: 180,
            fit: BoxFit.fill,
          ),
          bodyWidget: Center(
            child: Text(
              'يمكنك إضافة أماكنك المفضلة للرجوع إليها عند الحاجة',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    )
                  ],
                  fontSize: 20),
            ),
          ),
          titleWidget: Text(
            'أماكني المفضلة',
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6885e3), Color(0xffffffff)],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: [0.0, 1.2]),
            ),
          ),
          image: Image.asset(
            "assets/images/57.png",
            height: 190.0,
            width: 220.0,
            fit: BoxFit.fill,
          ),
          bodyWidget: Center(
            child: Text(
              'يمكنك البحث عن المكان الذي ترغب به ومعرفة تفاصيل موقعه',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    )
                  ],
                  fontSize: 20),
            ),
          ),
          titleWidget: Text(
            'إبحث',
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6885e3), Color(0xffffffff)],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: [0.0, 1.2]),
            ),
          ),
          image: Image.asset(
            "assets/images/54.png",
            height: 200.0,
            width: 250.0,
          ),
          bodyWidget: Center(
            child: Text(
              'يمكنك مشاركة موقعك الحالي مع اصدقائك ومعرفة المسافة التي تفصلك عنهم وطريق الوصول اليهم',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    )
                  ],
                  fontSize: 20),
            ),
          ),
          titleWidget: Text(
            'شارك موقعك',
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff6885e3), Color(0xffffffff)],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: [0.0, 1.2]),
            ),
          ),
          image: Image.asset(
            "assets/images/56.png",
            height: 210.0,
            width: 240.0,
            fit: BoxFit.fill,
          ),
          bodyWidget: Center(
            child: Text(
              'يمكنك الحصول على معلومات الاتصال بالمطاعم والأماكن السياحية والتجارية',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Cairo",
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    )
                  ],
                  fontSize: 20),
            ),
          ),
          titleWidget: Text(
            'تواصل',
            style: TextStyle(
                fontFamily: "Cairo", fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        spacing: EdgeInsets.all(5),
        activeColor: Color(0xff6885e3),
        // activeSize: Size.square(10),
        // size: Size.square(5),
        activeSize: Size(20, 10),
        size: Size.square(10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onSkip: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(
              title: '',
            ),
          ),
        );
      },
      animationDuration: 250,
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(
              title: '',
            ),
          ),
        );
      },
      nextFlex: 1,
      dotsFlex: 2,
      skipFlex: 1,
      showNextButton: true,
      showSkipButton: true,
      skip: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff6885e3), Color(0xffffffff)],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              stops: [0, 0.9]),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Color(0xff6885e3).withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "تخطي",
            style: TextStyle(
                fontFamily: "Cairo",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      next: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Color(0xff6885e3), width: 2)),
        child: Center(
          child: Icon(
            Icons.navigate_next,
            size: 30,
            color: Color(0xff6885e3),
          ),
        ),
      ),
      done: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff6885e3), Color(0xffffffff)],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: [0, 0.9]),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color(0xff6885e3).withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, 8),
              ),
            ]),
        child: Center(
          child: Text(
            "انتهى",
            style: TextStyle(
                fontFamily: "Cairo",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      //showDoneButton: true,
    );
  }
}
