import 'package:flutter/material.dart';
import 'package:travelapp/screens/Home.dart';
void main()=>runApp(
  
MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
   routes:{
       '/':(context) =>const Home(),
   }
  
)
);