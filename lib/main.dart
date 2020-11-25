import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:furniture_waalah/screens/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:furniture_waalah/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Container(
          width: 100000.0,
          height: 100000.0,
          child: Image.asset(
            'assets/sofa.png',
            width: 100000.0,
            height: 100000.0,
          ),
        ),
        nextScreen: MainScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/first':
            return PageTransition(
              child: MainScreen(),
              type: PageTransitionType.rightToLeft,
              settings: settings,
            );
            break;
          case '/second':
            return PageTransition(
              child: LoginPage(),
              type: PageTransitionType.leftToRight,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}


