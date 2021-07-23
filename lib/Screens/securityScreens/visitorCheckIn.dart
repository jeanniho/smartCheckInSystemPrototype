import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitorCheckIn extends StatefulWidget {
  final student;
  VisitorCheckIn({this.student});

  @override
  _VisitorCheckInState createState() => _VisitorCheckInState();
}

class _VisitorCheckInState extends State<VisitorCheckIn> {
  String fullName, IDno, address, contactNo, hostStudentNo, hostRoomNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFullName() {
    print(widget.student);
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Full Name",
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
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

  Widget _buildIDNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "ID No",
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return "ID number is required";
        }
        return null;
      },
      onSaved: (String value) {
        IDno = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Address",
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
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
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
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

  Widget _buildHostRoomNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Host room No",
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
      ),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return "Host room number is required";
        }
        return null;
      },
      onSaved: (String value) {
        hostRoomNo = value;
      },
    );
  }

  Widget _buildHostStudentNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Host student No",
        labelStyle: TextStyle(
          fontSize: 20.0,
        ),
      ),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return "Host student number is required";
        }
        return null;
      },
      onSaved: (String value) {
        hostStudentNo = value;
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
            Text("Visitor checkin"),
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
              child: ListTile(leading: Icon(Icons.home), title: Text('Student check out'))
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
        child: Column(
          children: <Widget>[
            Container(
              //margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              padding: EdgeInsets.all(32.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _buildFullName(),
                    _buildIDNo(),
                    SizedBox(
                      height: 16.0,
                    ),
                    // Row(
                    //   children: <Widget>[
                    //     Text(
                    //       "Address:",
                    //       style: TextStyle(
                    //         fontSize: 20.0,
                    //         color: Colors.grey[600],
                    //       ),
                    //     ),
                    //     Expanded(child: _buildAddress(),)
                    //   ],
                    // ),
                    _buildAddress(),
                    _buildContactNo(),
                    _buildHostRoomNo(),
                    _buildHostStudentNo(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
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

                    Navigator.pushNamed(context, "/healthdetails");
                    //here we can now use the declared variables later
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Check In",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
                    Navigator.pushNamed(context, "/visitorcheckout");
                    //here we can now use the declared variables later
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
