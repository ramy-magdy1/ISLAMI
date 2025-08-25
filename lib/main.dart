import 'package:flutter/material.dart';
import 'package:islami/ui/screens/splash/splash.dart';
import 'package:islami/ui/screens/sura_details/sura_details.dart';
import 'package:islami/ui/utils/app_colors.dart';

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
      theme: ThemeData(
        canvasColor: AppColors.gold
      ),
      routes: {
  Splash.routeName:(context) => const Splash(),
  Home.routeName:(context) => const Home(),
        SuraDetails.routeName:(context) => const SuraDetails(),
      }
    );


}}

