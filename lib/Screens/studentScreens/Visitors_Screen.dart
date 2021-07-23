import 'package:flutter/material.dart';
import 'Logo.dart';
import 'Resources.dart';


class Visitors extends StatefulWidget {

  @override
  _VisitorsState createState() => _VisitorsState();
}
enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
class _VisitorsState extends State<Visitors> {

  //User input variables
  String _surname;
  String _name;
  String _ID;
  String _email;
  String _contact;
  String _residence;
  var _selection;

  //Get Screen width for compatability with different devices
  double ScaleW(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.width * num;

  }

  //Get Screen height for compatability with different devices
  double ScaleH(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.height * num;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: ScaleH(context, 0.01), width: ScaleW(context, 1),),

          Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.menu, size: 40, color: Colors.blue,)),

          Center(child: Logo(context: context,)),

          SizedBox(height: ScaleH(context, 0.03),),

          Container(
            color: Colors.blue,
            width: ScaleW(context, 1,),
            height: ScaleH(context, 0.08),
            child: Center(
              child: Text("VISITORS INFORMATION",
                style:  TextStyle(
                  letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Container(
              width: ScaleW(context, 1),
              height: ScaleH(context, 0.4),
              child: Form(
                child: ListView(

                  children: [
                    Row(
                      children: [
                        Tools().Dtext(label: "Name"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _name)
                      ]),

                    Row(
                      children: [
                        Tools().Dtext(label: "Surname"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _surname)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Student ID/ID\nEmployee Number"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _ID)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Email Address"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _email)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Contact Number"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _contact)
                      ],),

                    Row(
                      children: [
                      Tools().Dtext(label: "Place of Residence"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _contact)
                      ],),

                    SizedBox(height: 20,)
                  ],),
              ),
            ),
          ),

          SizedBox(height: ScaleH(context, 0.05),),
          FlatButton(
            onPressed: (){},

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
                      color: Colors.white
                  ),),
              ),
            ),
          ),


        ],),


    );
  }
}
