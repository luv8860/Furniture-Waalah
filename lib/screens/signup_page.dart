import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:furniture_waalah/screens/product_screen.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.brown[900],
                    Colors.brown[800],
                    Colors.brown[700],
                    Colors.brown[600],
                    Colors.brown[500],
                    Colors.brown[400],
                    Colors.brown[300],
                    Colors.brown[200],
                    Colors.brown[100]
                  ]),
            ),
            child: Center(
                child: ListView(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Pacifico',
                                fontSize: 70,
                                fontWeight: FontWeight.w900,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                        child: Container(
                          //color: Colors.green,
                          height: 200,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 40),
                              Center(
                                child: AutoSizeText(
                                  'Ready to make your home King sized?',
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily: 'Pacifico'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.brown[900],
                      child: Icon(Icons.photo_camera, size: 60.0),
                      radius: 70.0),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Email-ID',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:50),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.brown),
                    child: Center(
                      child: FlatButton(
                        child: Text("Start Your New World here",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductScreen()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(height:50),
                ],
              ),
            ])),
          )
        ],
      ),
    );
  }
}
