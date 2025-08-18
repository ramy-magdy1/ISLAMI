import 'package:flutter/material.dart';
import 'package:islami/ui/screens/splash/splash.dart';

import 'ui/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: Splash.routeName,
      routes: {
  Splash.routeName:(context) => Splash(),
  Home.routeName:(context) => Home(),
      }
    );


}}

