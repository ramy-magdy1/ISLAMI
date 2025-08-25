

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/home.dart';
import 'package:islami/ui/utils/app_assets.dart';

class Splash extends StatefulWidget {
  static const routeName = 'splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppAssets.splashImage),fit: BoxFit.cover)
          ),),
    );
  }
}
