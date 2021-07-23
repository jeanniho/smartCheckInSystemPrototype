
import 'package:flutter/material.dart';
class ManagerCustomReport extends StatefulWidget {
  @override
  _ManagerCustomReportState createState() => _ManagerCustomReportState();
}

class _ManagerCustomReportState extends State<ManagerCustomReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.cyan[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                      Icons.menu,
                    size: 30,
                  ),
                  Text(
                      "Custom Report",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 2
                    ),
                  ),
                  Container(
                    width:100,
                    height: 100,
                    child: Image(
                      image: AssetImage("logo.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height:60
          ),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  "Filter by",
                style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 2
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Container(
            child: Text(
              "Temperature",
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 2,
                color: Colors.cyan
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,20,20,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan[800])
                  ),
                    onPressed: (){},
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                  ),
                  child: Text(
                      "<= 37.5",
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                  ),

                  onPressed: (){},
                  child: Text(
                      "> 37.5",
                  style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 2
                  ),
                  ),
                ),

              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Container(
            child: Text(
              "Cough",
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 2,
                color: Colors.cyan
              ),

            ),
          ),
          //Divider(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlineButton(
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                  ),

                  onPressed: (){},
                  child: Text(
                    "Dry",
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                  ),

                  onPressed: (){},
                  child: Text(
                    "Wet",
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)
                  ),

                  onPressed: (){},
                  child: Text(
                    "None",
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.cyan[800])
                ),
                //height: 50,
                //minWidth: 200,
                color: Colors.cyan,
                onPressed: (){},
                child: Text(
                  "Apply",
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2
                  ),
                )
            ),
          )

        ],
      ),
    );
  }
}
