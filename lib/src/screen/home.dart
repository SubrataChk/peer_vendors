import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:peer_vendors/src/widget/button.dart';
import 'package:peer_vendors/src/widget/drawer.dart';
import 'package:sizer/sizer.dart';

class HomePageSection extends StatefulWidget {
  const HomePageSection({Key? key}) : super(key: key);

  @override
  State<HomePageSection> createState() => _HomePageSectionState();
}

class _HomePageSectionState extends State<HomePageSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "Anderkilla, Chittagong",
              style: TextStyle(color: Colors.black, fontSize: 14.sp),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info_outline,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            //Search...................
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search Product",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 8.w,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            //List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Chip(label: Text("Cars, Bikes, Bicycles")),
                    Chip(label: Text("Electronics & Appliances")),
                  ],
                ),
              ),
            ),

            //!

            Container(
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImage.search,
                  ),
                  Text(
                    "No Products available in your area.",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child:
                        CustomButton(onTap: () {}, title: "Search in nearby"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: CustomButton(
                        onTap: () {}, title: "Put Up something for Sale"),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color(0xffFFFFFF),
      //   onPressed: () {
      //     helpsupport(context);
      //   },
      //   child: Icon(
      //     Icons.headphones,
      //     color: AppColor.welColor,
      //   ),
      // ),
    );
  }

  helpsupport(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Help & Support"),
            children: [
              SimpleDialogOption(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(AppImage.play),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text("Fix My Location Problem"),
                  ],
                ),
                onPressed: () {},
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset(AppImage.play),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text("How to use this app"),
                  ],
                ),
                onPressed: () {},
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: AppColor.welColor,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text("Contact us for Location"),
                  ],
                ),
                onPressed: () {},
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(8),
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
