import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app/app_image.dart';

class WellDonePage extends StatelessWidget {
  const WellDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 20.h,
              width: double.infinity,
              child: Image.asset(AppImage.done),
            ),
          ),
          Text(
            "Well-Done",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
          )
        ],
      ),
    );
  }
}
