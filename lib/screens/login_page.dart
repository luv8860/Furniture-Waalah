import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_waalah/animations/wave.dart';
import 'package:furniture_waalah/screens/main_screen.dart';
import 'package:page_transition/page_transition.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: Colors.brown[200],
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[TextField(),
              SizedBox(height:20),
              TextField(),
              SizedBox(height:20),
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

                                        },
                                        child: Text(
                                          "Login Here",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))),
                              ),
                            ),
                            SizedBox(height:20),
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
                                                        child: MainScreen(),
                                                        ctx: context),
                                                );

                                        },
                                        child: Text(
                                          "Go Back To Main Screen",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))),
                              ),
                            ),
                            SizedBox(height:20),
              Row(
                children: [ SizedBox(width:50),
                  IconButton(icon:Image.asset(
                        'assets/google.png',
                      ),
                      iconSize: 70,
                      onPressed: (){
                        print('hello');
                      },),
                      SizedBox(width: 25.0),
                      IconButton(icon:Image.asset(
                        'assets/facebook.png',
                      ),
                      iconSize: 100.0,
                      onPressed: (){
                        print('hello');
                      },),
                ],
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
