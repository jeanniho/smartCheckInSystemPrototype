import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ForgotPswd.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
          builder: (context) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/transparentbg.png"),
                        fit: BoxFit.cover)),
                child: Scaffold(
                  //resizeToAvoidBottomPadding: false,
                  backgroundColor: Colors.transparent,
                  body: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 250,
                            ),
                            FlatButton(
                              onPressed: () {
                                //nothing happens here.
                              },
                              child: Container(
                                height: 70,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 8),
                                          color:
                                              Colors.cyan[200].withOpacity(0.8),
                                          spreadRadius: 0,
                                          blurRadius: 2)
                                    ]),
                                child: Center(
                                    child: Text(
                                  "Sign in".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 65,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              onChanged: (String str) {
                                print(str);
                              },
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              showCursor: true,
                              //add a variable where the inputed text will go
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(fontSize: 24),
                            ),
                            TextFormField(
                              obscureText: !isVisible,
                              onChanged: (String str) {
                                print(str);
                              },
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  suffixIcon: IconButton(
                                    icon: isVisible
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    },
                                  )),
                              showCursor: true,

                              //add a variable where the inputed text will go
                            ),
                            SizedBox(
                              height: 75,
                            ),
                            FlatButton(
                              onPressed: () {
                                //logging in
                              },
                              child: Container(
                                height: 65,
                                width: 270,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 8),
                                          color:
                                              Colors.cyan[200].withOpacity(0.8),
                                          spreadRadius: 0,
                                          blurRadius: 2)
                                    ]),
                                child: Center(
                                    child: Text(
                                  "log in ".toUpperCase(),
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
                            FlatButton(
                                onPressed: () {
                                  print("Hahah you forgot your Password!");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ForgotPswd();
                                  }));
                                },
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
