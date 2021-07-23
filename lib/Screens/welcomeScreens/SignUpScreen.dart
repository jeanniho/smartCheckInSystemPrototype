import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _positions = [
    "Please select",
    "Position0",
    "Position1",
    "Position2",
    "Position3"
  ];

  var _currentSelectedPosition = "Please select";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Container(
            child: Scaffold(
              appBar: AppBar(
                //add return buttonIcon
                //toolbarHeight: 60,
                title: Container(
                  height: 45,
                  width: 1000,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                      ]),
                ),
                elevation: 0,
                backgroundColor: Colors.blue[300],
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.cyan[200],
                              spreadRadius: 5,
                            )
                          ],
                          color: Colors.cyan[100],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 80, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: TextField(
                                onChanged: (String str) {
                                  print(str);
                                },
                                showCursor: true,
                                decoration: InputDecoration(
                                  helperText: "First Name",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue[300])),
                                ),
                                //add a variable where the inputed text will go
                              ),
                            ),
                            SizedBox(width: 50),
                            Flexible(
                              child: TextField(
                                onChanged: (String str) {
                                  print(str);
                                },
                                showCursor: true,
                                decoration: InputDecoration(
                                  helperText: "Last Name",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue[300])),
                                ),
                                //add a variable where the inputed text will go
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ID / Passport:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: TextField(
                                onChanged: (String str) {
                                  print(str);
                                },
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue[300]))),
                                showCursor: true,
                                //add a variable where the inputed text will go
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Number:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                                child: TextField(
                              onChanged: (String str) {
                                print(str);
                              },
                              showCursor: true,
                              decoration: InputDecoration(
                                helperText: "(+27)12 345 6789",
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue[300])),
                                //add a variable where the inputed text will go
                              ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email Address:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue[300]))),
                                onChanged: (String str) {
                                  print(str);
                                },

                                showCursor: true,
                                //add a variable where the inputed text will go
                                //add an email address code checker
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 45, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Address:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue[300], width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  onChanged: (String str) {
                                    print(str);
                                  },
                                  showCursor: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  //add a variable where the inputed text will go
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Position:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            Flexible(flex: 1, child: SizedBox(width: 150)),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.blue[300]),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(5, 2, 5, 2),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    enabledBorder: InputBorder.none,
                                  ),
                                  items: _positions.map((String position) {
                                    return DropdownMenuItem(
                                      value: position,
                                      child: Container(
                                        child: Text("    " + position),
                                      ),
                                    );
                                  }).toList(),
                                  value: _currentSelectedPosition,
                                  onChanged: (String newSelectedPosition) {
                                    setState(() {
                                      this._currentSelectedPosition =
                                          (newSelectedPosition !=
                                                  "Please select")
                                              ? newSelectedPosition
                                              : null;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blue[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Password:",
                                //copy from SignIn class password properties
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue[300]))),
                                onChanged: (String str) {
                                  print(str);
                                },

                                showCursor: true,
                                //add a variable where the inputed text will go
                                //add an email address code checker
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Confirm Password:",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 1)),
                            SizedBox(width: 20),
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue[300]))),
                                onChanged: (String str) {
                                  print(str);
                                },

                                showCursor: true,
                                //add a variable where the inputed text will go
                                //add an email address code checker
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FlatButton(
                          onPressed: () {
                            print("pressed");
                          },
                          child: Container(
                            //margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                            //padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                            height: 80,
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
                              "Register".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            )),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
