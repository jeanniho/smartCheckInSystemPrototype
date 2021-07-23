import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitorCheckOut extends StatefulWidget {
  @override
  _VisitorCheckOutState createState() => _VisitorCheckOutState();
}

class Students {
  String name, surname;
  int studentNo;

  Students({ this.name, this.surname, this.studentNo});
}

class _VisitorCheckOutState extends State<VisitorCheckOut> {
  int studentNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget results;

  //dummy contents
  List<Students> students = [
    Students(name: "Jeand", surname: "de dieu", studentNo: 38),
    Students(name: "Nkanyiso", surname: "mentor", studentNo: 1),
    Students(name: "Maadjida", surname: "creativity", studentNo: 5),
    Students(name: "Surprise", surname: "Tadaaa", studentNo: 20),
    Students(name: "HBK", surname: "French", studentNo: 50),
  ];

  Widget displayStudents(){
    return Column(
      children: students.map((e) {
        return ListTile(
          title: Text(
            e.name+" "+e.surname,
          ),
          leading: Text(e.studentNo.toString()),
          trailing: FlatButton(
              child: Text(
                "SIGN OUT",
              ),
            onPressed: (){},
          ),
        );
      }).toList()
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
            Text("Visitor checkout"),
            IconButton(
              icon: Icon(Icons.check_circle_outline),
              onPressed: (){},
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
        child: Container(
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Filter Host Student No.",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 50.0
                    ),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter host student number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (String value){
                          int temp = int.tryParse(value);
                          if(value.isEmpty || temp==null){
                            return "A valid student number is required";
                          }
                          return null;
                        },
                        onSaved: (String value){
                          studentNo = int.parse(value);
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onPressed: (){
                      if(!_formKey.currentState.validate()){
                        return;
                      }
                      _formKey.currentState.save();
                      print(studentNo);
                      setState(() {
                        results = displayStudents();
                      });
                    },
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 2.0,
                  ),
                  Container(
                    child: results,
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
