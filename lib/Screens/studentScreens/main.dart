import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Health_Survey.dart';
import 'Logo.dart';
import 'Visitors_Screen.dart';

// void main() => runApp(MaterialApp(
//   home: SecurityHome(),
// ));

class StudentHome extends StatelessWidget {

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

  //will pcreate a method with query to get screen size for the app
  //to be compatable with many fones

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Column will carry all widget on first page
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          // contaner to create space and help align the column with long width
          Container(
            width: ScaleW(context, 1),
            height: ScaleH(context, 0.05),
          ),

          Logo(context: context,),

          SizedBox(height: ScaleH(context, 0.05),),

          FlatButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Survey_page()));},
            
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
                  child: Text("ADD HEALTH INFORMATION",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
            ),

          SizedBox(height: ScaleH(context, 0.06),),

          FlatButton(
            onPressed: (){Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => Visitors()));},

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
                child: Text("ADD A VISITOR",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
              ),
            ),
          ),

          SizedBox(height: ScaleH(context, 0.07),),

          //Container for annoucements
          Container(
            color: Colors.blue[200],
            width: MediaQuery.of(context).size.width,
            height: ScaleH(context, 0.44),
            child: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: ScaleH(context, 0.07),
                    width: ScaleW(context, 0.6),
                    color: Colors.blue[500],
                    child: Center(
                        child: Text("ANNOUCEMENTS",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),)),
                  ),
                ),

                Container(
                  height: ScaleH(context, 0.25),
                  child: Center(child: Text("You Have No New Annoucements")),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

