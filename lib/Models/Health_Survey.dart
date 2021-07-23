import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcheckin_/Screens/securityScreens/studentCheckOut.dart';
import 'package:smartcheckin_/Screens/studentScreens/Logo.dart';
import 'package:smartcheckin_/Screens/studentScreens/Visitors_Screen.dart';
import 'package:smartcheckin_/Screens/studentScreens/main.dart';

class Survey_page extends StatelessWidget {

  //Method to get screen width
  double ScaleW(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.width * num;

  }

  //Method to get screen height
  double ScaleH(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.height * num;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student CheckOut"),
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            Container(
              height: ScaleH(context, 0.05),
              child: Center(
                child: Text('Smart Menu',
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 16
                ),),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => StudentHome())
                );  //Navigator
              }),

            ListTile(
              leading: Icon(Icons.transit_enterexit),
              title: Text("Visitor Check In"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => Visitors()
                    ));
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {SystemNavigator.pop();},
            )

          ],
        ),
      ),

      body: Column(
      children: [


        SizedBox(height: ScaleH(context, 0.05), width: ScaleW(context, 1),),

        Logo(context: context),

        Container(
          color: Colors.blue,
          width: ScaleW(context, 1,),
          height: ScaleH(context, 0.08),
          child: Center(
            child: Text("HEALTH SURVEY",
              style:  TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
          ),
        ),

        SizedBox(height: ScaleH(context, 0.05),),

        Container(
          width: ScaleW(context, 0.9),
          height: ScaleH(context, 0.2),
          child: Text("These checks are conducted to ensure the"
              "health and safety of all our students. Should you"
              "answer yes to the below, you will be reffered to"
              "the isolation tent for futher assistance."
              "\n\nIn this event, Kindly refrain from entering UJ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18
          ),),

        ),


        SizedBox(height: ScaleH(context, 0.05),),

        FlatButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => StudentCheckOut()
                ));
          },

          child: Container(
            height: ScaleH(context, 0.09),
            width: ScaleW(context, 0.7),
            decoration: BoxDecoration(
                color: Colors.blue[500],
                borderRadius:  BorderRadius.circular(10),
                boxShadow: [BoxShadow(spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.blue[200])]),
            child: Center(
              child: Text("PROCEED",
                style: TextStyle(
                  fontSize: 18,

                    color: Colors.white
                ),),
            ),
          ),
        ),


  ],
      ),
    );
  }
}
