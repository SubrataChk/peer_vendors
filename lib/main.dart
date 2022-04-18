import 'package:flutter/material.dart';

import 'package:peer_vendors/src/nav/nav.dart';
import 'package:peer_vendors/src/splash/splash.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Peer Vendors",
          theme: ThemeData.light(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
