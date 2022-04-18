import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:peer_vendors/src/auth/auth.dart';

import 'package:peer_vendors/src/model/slidemodel.dart';
import 'package:peer_vendors/src/widget/slide_dot.dart';
import 'package:peer_vendors/src/widget/slideitem.dart';
import 'package:sizer/sizer.dart';

import '../app/app_image.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool navigateToPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.welColor,
                    borderRadius: BorderRadius.circular(12)),
                height: 40.h,
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: -110,
                        left: 20,
                        right: 20,
                        child: CircleAvatar(
                          radius: 20.w,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18.w,
                              child: Image.asset(AppImage.logo)),
                        )),
                    Positioned(
                      left: 3.w,
                      right: 3.w,
                      top: 70,
                      child: Column(
                        children: [
                          Text(
                            "Choose Your language",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: ListTile(
                              leading: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Colors.white),
                                child: Radio(
                                  onChanged: (value) {
                                    setState(() {
                                      navigateToPage = true;
                                    });
                                    if (navigateToPage) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SliderPageSection()));
                                    }
                                  },
                                  value: 1,
                                  groupValue: navigateToPage,
                                ),
                              ),
                              title: Text(
                                "English",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: ListTile(
                              leading: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Colors.white),
                                child: Radio(
                                  onChanged: (value) {
                                    setState(() {
                                      navigateToPage = true;
                                    });
                                    if (navigateToPage) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SliderPageSection()));
                                    }
                                  },
                                  value: 2,
                                  groupValue: navigateToPage,
                                ),
                              ),
                              title: Text(
                                "Kiswahili",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: ListTile(
                              leading: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Colors.white),
                                child: Radio(
                                  onChanged: (value) {
                                    setState(() {
                                      navigateToPage = true;
                                    });
                                    if (navigateToPage) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SliderPageSection()));
                                    }
                                  },
                                  value: 3,
                                  groupValue: navigateToPage,
                                ),
                              ),
                              title: Text(
                                "Francais",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class SliderPageSection extends StatefulWidget {
  const SliderPageSection({Key? key}) : super(key: key);

  @override
  State<SliderPageSection> createState() => _SliderPageSectionState();
}

class _SliderPageSectionState extends State<SliderPageSection> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(microseconds: 300), curve: Curves.easeIn);
    });
  }

  onPagechange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          height: 10.h,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 2,
                  child: _currentPage != 3
                      ? TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AuthPageSection()));
                          },
                          child: Text(
                            "SKIP",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.welColor),
                          ))
                      : Container()),
              Expanded(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthPageSection()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 10.h,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50))),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
              )
            ],
          ),
        ),
        body: SafeArea(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      PageView.builder(
                          onPageChanged: onPagechange,
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: sliderList.length,
                          itemBuilder: (context, index) {
                            return SlideItems(index: index);
                          }),
                      Positioned(
                        top: 40.h,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              for (int i = 0; i < sliderList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(isActive: true)
                                else
                                  SlideDots(isActive: false)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
