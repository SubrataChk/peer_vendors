import 'package:flutter/material.dart';
import 'package:peer_vendors/src/auth/create_acc.dart';
import 'package:sizer/sizer.dart';

import '../app/app_color.dart';
import '../utils/otp.dart';
import '../widget/button.dart';
import '../widget/textForm.dart';

class LoginPageSection extends StatefulWidget {
  const LoginPageSection({Key? key}) : super(key: key);

  @override
  State<LoginPageSection> createState() => _LoginPageSectionState();
}

class _LoginPageSectionState extends State<LoginPageSection> {
  List citems = [
    "Bangladesh",
    "Canada",
    "India",
    "Pakistan",
  ];
  String? cselectItems;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 3.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: AppColor.btnColor,
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 6.w,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                child: Text(
                  "Login to proceed",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      color: Color(0xffc4c4c4),
                      borderRadius: BorderRadius.circular(12)),
                  child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueAccent),
                      tabs: [
                        Text(
                          "Phone",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp),
                        ),
                        Text(
                          "E-Mail",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      //! Phone
                      ListView(
                        children: [
                          CustomTextForm(hintText: "Phone"),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.w, vertical: 1.h),
                            child: SizedBox(
                              width: double.infinity,
                              height: 8.h,
                              child: DropdownButtonFormField(
                                hint: Text("Select your Country"),
                                // decoration: InputDecoration(
                                // hintText: "Select Your Country"),
                                onChanged: (value) {
                                  setState(() {
                                    cselectItems = value.toString();
                                  });
                                },
                                value: cselectItems,
                                items: citems
                                    .map((citems) => DropdownMenuItem(
                                        value: citems,
                                        child: Text(
                                          citems,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp),
                                        )))
                                    .toList(),
                              ),
                            ),
                          ),
                          CustomButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OtpVerification()));
                              },
                              title: "Continue")
                        ],
                      ),
                      //! Email
                      ListView(
                        children: [
                          CustomTextForm(hintText: "E-Mail"),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.w, vertical: 1.h),
                            child: SizedBox(
                              width: double.infinity,
                              height: 8.h,
                              child: DropdownButtonFormField(
                                hint: Text("Select your Country"),
                                // decoration: InputDecoration(),
                                onChanged: (value) {
                                  setState(() {
                                    cselectItems = value.toString();
                                  });
                                },
                                value: cselectItems,
                                items: citems
                                    .map((citems) => DropdownMenuItem(
                                        value: citems,
                                        child: Text(
                                          citems,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.sp),
                                        )))
                                    .toList(),
                              ),
                            ),
                          ),
                          CustomButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OtpVerification()));
                              },
                              title: "Continue")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccountSection()));
                      },
                      child: const Text("Register"))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
