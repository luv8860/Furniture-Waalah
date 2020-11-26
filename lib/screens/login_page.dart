import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_waalah/animations/wave.dart';

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
            height: size.height - 300,
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
          Row(
            children: [
              SizedBox(width: 20.0),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 23.0),
              Padding(
                padding: const EdgeInsets.only(top: 145.0),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.brown[500]),
                          top: BorderSide(color: Colors.brown[500]),
                          left: BorderSide(color: Colors.brown[500]),
                          right: BorderSide(color: Colors.brown[500]))),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.brown[500]),
                          top: BorderSide(color: Colors.brown[500]),
                          left: BorderSide(color: Colors.brown[500]),
                          right: BorderSide(color: Colors.brown[500]))),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),

                  ),
                ),
                SizedBox(height: 20,),
                FlatButton(child:Text("Forgot Password?", style: TextStyle(color: Colors.grey),),onPressed: (){},),
                 Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 45),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.brown[500]
                          ),
                          child: Center(
                            child: FlatButton(child:Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),onPressed: (){},),
                          ),
                        ),
                 SizedBox(height: 40,),                
                 Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20.0,),
                  Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey[200]
                                ),
                                child: Center(
                                  child: FlatButton(child:Row(
                                    children: [Image.asset('assets/facebook.png',height:30),
                                      Text("Facebook", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                                    ],
                                  ),onPressed: (){},)
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey[200]
                                ),
                                child: Center(
                                  child: FlatButton(child:Row(
                                    children: [
                                      Image.asset('assets/google.png',height:30),
                                      SizedBox(width: 10,),
                                      Text("Google", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
                                    ],
                                  ),onPressed: (){},)
                                ),
                              ),
                            )
                          ],
                        )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
