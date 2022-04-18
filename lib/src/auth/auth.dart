import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:peer_vendors/src/auth/create_acc.dart';
import 'package:peer_vendors/src/auth/login.dart';
import 'package:sizer/sizer.dart';

import '../widget/button.dart';

class AuthPageSection extends StatefulWidget {
  const AuthPageSection({Key? key}) : super(key: key);

  @override
  State<AuthPageSection> createState() => _AuthPageSectionState();
}

class _AuthPageSectionState extends State<AuthPageSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Image.asset(
                    AppImage.logo,
                    height: 10.h,
                  ),
                ),
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color: Colors.black),
                ),
                Text(
                  "If you continue, you are accepting",
                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                ),
                Text(
                  "Our Terms & Conditions and",
                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateAccountSection()));
            },
            title: "Register",
          ),
          CustomButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginPageSection()));
            },
            title: "Login",
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Or Continue with",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomSocialButton(
                          onTap: () {},
                          images: AppImage.facebook,
                        ),
                        CustomSocialButton(
                          onTap: () {},
                          images: AppImage.google,
                        ),
                        CustomSocialButton(
                          onTap: () {},
                          images: AppImage.twitter,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 4.w,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage(AppImage.play),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Need Help ?",
                  style: TextStyle(
                      color: const Color(0xffFF7465),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class CustomSocialButton extends StatelessWidget {
  final String images;
  final VoidCallback onTap;
  const CustomSocialButton(
      {Key? key, required this.images, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(images),
      ),
    );
  }
}
