import 'package:flutter/material.dart';
import 'package:furniture_waalah/animations/fade_animations.dart';
import 'package:furniture_waalah/screens/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 150.0),
          FadeAnimation(1.5, Image.asset('assets/sofa.png')),
          SizedBox(height: 55.0),
          FadeAnimation(
            1.35,
            FadeAnimation(
                1.2,
                AutoSizeText(
                  "Furniture Waalah",
                  maxLines:1,
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sansita Swashed'),
                )),
          ),
          SizedBox(height: 55.0),
           FadeAnimation(
                            1.6,
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.brown[400]),
                              child: Center(
                                child: ButtonTheme(
                                    minWidth: 200.0,
                                    child: FlatButton(
                                        onPressed: () {
                                           Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType.leftToRight,
                                                        child: LoginPage(),
                                                        ctx: context),
                                                );

                                        },
                                        child: Text(
                                          "Login Here",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))),
                              ),
                            )),
                  SizedBox(height: 20.0),
              FadeAnimation(
                            1.6,
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.brown[400]),
                              child: Center(
                                child: ButtonTheme(
                                    minWidth: 200.0,
                                    child: FlatButton(
                                        onPressed: () {
                                           Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType.leftToRight,
                                                        child: LoginPage(),
                                                        ctx: context),
                                                );

                                        },
                                        child: Text(
                                          "Sign Up Here",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))),
                              ),
                            )),
        ]),
      )),
    );
  }
}
