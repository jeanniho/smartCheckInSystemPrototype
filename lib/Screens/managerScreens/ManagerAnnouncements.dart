import 'package:flutter/material.dart';

class ManagerAnnouncements extends StatefulWidget {
  @override
  _ManagerAnnouncementsState createState() => _ManagerAnnouncementsState();
}

class _ManagerAnnouncementsState extends State<ManagerAnnouncements> {
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
                    "Announcements",
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
            child: Container(
              width: 400,
                height: 100,
              decoration: BoxDecoration(
                  border: Border.all(color:Colors.cyan),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  SizedBox(
                      height:10
                  ),
                  Text(
                    "Subject",
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2
                    ),
                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: TextFormField(
//                      maxLines: null,
//                      decoration: InputDecoration(
//                        hintText: "Subject"
//                      ),
//                    ),
//                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(

              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  SizedBox(
                    height:10
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.cyan,
                      maxLengthEnforced: true,
                      maxLines: null,
                      decoration: InputDecoration(
                        fillColor: Colors.cyan
//                          hintText: "Subject"
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
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
                    "ANNOUNCE",
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
