import 'package:flutter/material.dart';

class ManagerReport extends StatefulWidget {
  @override
  _ManagerReportState createState() => _ManagerReportState();
}

class _ManagerReportState extends State<ManagerReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            color: Colors.cyan,
            width: MediaQuery.of(context).size.width,
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
                    "Smart CheckIn",
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
          Padding(
            padding: const EdgeInsets.all(40),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.cyan[800])
                ),
                //height: 50,
                //minWidth: 200,
                color: Colors.cyan[800],
                onPressed: (){},
                child: Text(
                  "Announcement",
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                    color: Colors.white
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(

                        "https://www.3m.co.za/wps/wcm/connect/450616af-cc00-42de-adae-dbbdccdcbcaa/Coronavirus_410x270px.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-450616af-cc00-42de-adae-dbbdccdcbcaa-n7BAwkj",
                        height: 200.0,
                        width: 300.0,
                          fit: BoxFit.fill
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.cyan[800])
                          ),
                          //height: 50,
                          //minWidth: 300,
                          color: Colors.cyan[800],
                          onPressed: (){},
                          child: Text(
                            "Govt covid -19 report",
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2,
                                color: Colors.white
                            ),
                          )
                      ),
                    ),


                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(

                          "data:image/png;base64,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",
                          height: 200.0,
                          width: 300.0,
                          fit: BoxFit.fill
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.cyan[800])
                          ),
                          //height: 50,
                          //minWidth: 300,
                          color: Colors.cyan[800],
                          onPressed: (){},
                          child: Text(
                            "Custom report",
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2,
                                color: Colors.white
                            ),
                          )
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height:20
          ),

        ],
      ),
    );
  }
}
