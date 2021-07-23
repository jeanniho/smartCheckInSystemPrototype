import 'package:flutter/material.dart';
//security screens
import 'package:smartcheckin_/Models/healthDetails.dart';
import 'package:smartcheckin_/Screens/securityScreens/studentCheckOut.dart';
import 'package:smartcheckin_/Screens/securityScreens/visitorCheckIn.dart';
import 'package:smartcheckin_/Screens/securityScreens/visitorCheckOut.dart';
//welcome screens
import 'Screens/welcomeScreens/HomeScreen.dart';
//student screens
import 'package:smartcheckin_/Screens/studentScreens/main.dart';
//manager screens
import 'package:smartcheckin_/Screens/managerScreens/ManagerAnnouncements.dart';
import 'package:smartcheckin_/Screens/managerScreens/ManagerCustomReport.dart';
import 'package:smartcheckin_/Screens/managerScreens/ManagerReport.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StudentCheckOut(),
      routes: {
      "/studentcheckout": (context) => StudentCheckOut(),
      "/visitorcheckout": (context) => VisitorCheckOut(),
      "/visitorcheckin": (context) => VisitorCheckIn(),
      "/healthdetails": (context) => HealthDetails(),
      "/homesccreen": (context) => HomeScreen(),
      "/managerannouncement": (context) => ManagerAnnouncements(),
      "/managercustomer": (context) => ManagerCustomReport(),
      "/managereport": (context) => ManagerReport(),
      "/studentscreens": (context) => StudentHome(),
    },
    );
  }
}



