import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartcheckin_/Models/healthDetails.dart';
import 'package:smartcheckin_/Screens/securityScreens/visitorCheckIn.dart';

class StudentCheckOut extends StatefulWidget {
  @override
  _StudentCheckOutState createState() => _StudentCheckOutState();
}

class _StudentCheckOutState extends State<StudentCheckOut> {
  //personal details form variables
  String fullName, studentNo, address, contactNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map student = {};

  //creating the fields for the personal details form
  Widget _buildFullName() {
    return TextFormField(
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: "Full Name",
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Name and Surname is required";
        }
        return null;
      },
      onSaved: (String value) {
        fullName = value;
      },
    );
  }

  Widget _buildStudentNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Student No",
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return "Student number is required";
        }
        return null;
      },
      onSaved: (String value) {
        studentNo = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(10), left: Radius.circular(10)),
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return "Address is required";
        }
        return null;
      },
      onSaved: (String value) {
        address = value;
      },
    );
  }

  Widget _buildContactNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Contact No",
      ),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return "Contact number is required";
        }
        return null;
      },
      onSaved: (String value) {
        contactNo = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Student checkout"),
            IconButton(
              icon: Icon(Icons.check_circle_outline),
              onPressed: () {},
            )
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/studentcheckout');
              },
              child: ListTile(leading: Icon(Icons.person_outline), title: Text('Student check out'))
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/visitorcheckin');
              },
              child: ListTile(leading: Icon(Icons.home), title: Text('Visitor check in'))
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/visitorcheckout');
              },
              child: ListTile(leading: Icon(Icons.home), title: Text('Visitor check out'))
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _buildFullName(),
                    _buildStudentNo(),
                    SizedBox(
                      height: 16.0,
                    ),
                    _buildAddress(),
                    _buildContactNo()
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Add health details",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      student["fullname"]=fullName;
                      student["studentno"]=studentNo;
                      student["address"]=address;
                      student["contactno"]=contactNo;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HealthDetails(student: student)),
                          );
                      //Navigator.pushNamed(context, "/healthdetails");
                      //here we can now use the declared variables later
                    },
                  ),
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Check out",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      student["fullname"]=fullName;
                      student["studentno"]=studentNo;
                      student["address"]=address;
                      student["contactno"]=contactNo;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => VisitorCheckIn(student: student)),
                      );

                      //Navigator.pushNamed(context, "/visitorcheckin");
                      //here we can now use the declared variables later
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
