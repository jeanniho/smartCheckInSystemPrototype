import 'package:flutter/material.dart';


class Tools
{


  String _selection;
  //Entry filed for user input
  Widget userInput({String variable})
  {
    return Expanded(
      child: TextField(
        onChanged: (String input) {
          variable = input;
        },

        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget Dtext({String label})
  {
    return Text(label,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: Colors.black
    ),);
  }

  

}


