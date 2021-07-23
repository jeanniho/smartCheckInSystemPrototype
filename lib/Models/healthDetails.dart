import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthDetails extends StatefulWidget {
  final student;
  HealthDetails({this.student});

  @override
  _HealthDetailsState createState() => _HealthDetailsState();
}

class _HealthDetailsState extends State<HealthDetails> {
  //health details form variables
  double temperature = 0; //keep the entered temperature here
  final GlobalKey<FormState> _tempKey = GlobalKey<FormState>();
  Map<String, bool> symptoms = {
    "Lung infection?": false,
    "Contacted infected person?": false,
    "cough/Flu?": false,
    "Sore throat?": false,
    "Shortness of breath?": false,
    "Loss of smell/taste?": false,
    "Muscle pain?": false,
    "Diarrhoea": false,
    "Weakness": false,
  }; //the symptoms
  List<String> selected = []; //selected symptoms

  //building/displaying the health details form
  Widget healthForm() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Symptoms",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 2.0,
        ),
        SizedBox(
          child: ListView(
            shrinkWrap: true,
            children: symptoms.keys.map((option) {
              return CheckboxListTile(
                activeColor: Colors.red,
                //dense: true,
                title: Text(option),
                value: symptoms[option],
                onChanged: (bool checked) {
                  setState(() {
                    if (checked == true) {
                      selected.add(option);
                    } else {
                      selected.remove(option);
                    }
                    symptoms[option] = checked;
                  });
                },
              );
            }).toList(),
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 2.0,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Temperature",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              width: 200,
              child: Container(
                //color: Colors.yellowAccent,
                padding: EdgeInsets.fromLTRB(8.0, 16.0, 0, 16.0),
                child: Form(
                  key: _tempKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(10),
                            left: Radius.circular(10)),
                      ),
                    ),
                    validator: (String value) {
                      double temp = double.tryParse(value);
                      if (value.isEmpty || temp == null) {
                        return "A valid temperature value is required";
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      temperature = double.parse(value);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.student);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("COVID-19 Health Check"),
            IconButton(
              icon: Icon(Icons.check_circle_outline),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            healthForm(),
            RaisedButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "CHECK OUT",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (!_tempKey.currentState.validate()) {
                  return;
                }
                _tempKey.currentState.save();

                Navigator.pushNamed(context, "/visitorcheckin");
                //here we can now use the declared variables later
              },
            ),
          ],
        ),
      ),
    );
  }
}
