import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
import 'HomeScreen.dart';

class ForgotPswd extends StatefulWidget {
  @override
  _ForgotPswdState createState() => _ForgotPswdState();
}

class _ForgotPswdState extends State<ForgotPswd> {
  void moveToLastScreen() => Navigator.pop(context);

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
                child: WillPopScope(
                  onWillPop: () {
                    moveToLastScreen();
                  },
                  child: Scaffold(
                    resizeToAvoidBottomPadding: false,
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      leading: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.blue[300],
                            semanticLabel: "Go Back",
                            size: 38,
                          ),
                          onPressed: () {
                            moveToLastScreen();
                          }),
                      elevation: 0,
                    ),
                    body: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Forgot your Password?",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              """No need to fret! Just enter your registered email
address below and we will send you an email
with instructions to follow.""",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.cyan),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 0),
                              child: TextField(
                                onChanged: (String str) {
                                  print(str);
                                },
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.black,
                                    ))),
                                showCursor: true,
                                //add a variable where the inputed text will go
                              ),
                            ),
                            SizedBox(
                              height: 75,
                            ),
                            FlatButton(
                              onPressed: () {
                                //requesting password
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
                                  "request password".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                )),
                              ),
                            ),
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
