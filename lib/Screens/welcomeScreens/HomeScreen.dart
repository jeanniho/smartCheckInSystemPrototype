import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
import 'SignInScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/mainbg.jpg"), fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 273,
                      ),
                      Container(
                        child: Text(
                          "New to us?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signup();
                          }));
                        },
                        child: Container(
                          height: 55,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 8),
                                    color: Colors.cyan[200].withOpacity(0.8),
                                    spreadRadius: 0,
                                    blurRadius: 2)
                              ]),
                          child: Center(
                              child: Text(
                            "Sign up".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Text(
                          "Already a member?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 140),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.cyan[200].withOpacity(0.8),
                                width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignIn();
                            }));
                          },
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
