import 'package:flutter/material.dart';
import 'package:travelapp/screens/Home.dart';
import 'package:travelapp/screens/Destination.dart';
void main()=>runApp(
  
MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
   routes:{
       '/':(context) =>const Home(),
       '/destiny':(context) =>const Destiny(),
   }
  
)
);