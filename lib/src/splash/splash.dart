import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:peer_vendors/src/auth/login.dart';
import 'package:peer_vendors/src/nav/nav.dart';
import 'package:peer_vendors/src/welcome/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImage.logo,
            width: double.infinity,
          )
        ],
      )),
    );
  }
}
