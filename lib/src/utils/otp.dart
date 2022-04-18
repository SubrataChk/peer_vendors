import 'package:flutter/material.dart';
import 'package:peer_vendors/src/nav/nav.dart';

import 'package:sizer/sizer.dart';

import '../app/app_image.dart';
import '../widget/button.dart';
import 'done.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 20.h,
              width: double.infinity,
              child: Image.asset(AppImage.logo),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Enter 6 digit OTP code"),
            ),
          ),
          CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomNavigationBarSection()));
              },
              title: "Continue"),
        ],
      ),
    ));
  }
}
