import 'package:flutter/material.dart';
import 'Logo.dart';

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
    body: Column(
    children: [
      SizedBox(height: ScaleH(context, 0.03), width: ScaleW(context, 1),),

      Align(
        alignment: Alignment.topLeft,
          child: Icon(Icons.menu, size: 40, color: Colors.blue,)),

      Logo(context: context,),

      SizedBox(height: ScaleH(context, 0.01),),

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
        height: ScaleH(context, 0.3),
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
