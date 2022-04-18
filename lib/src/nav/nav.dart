import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peer_vendors/src/screen/account.dart';
import 'package:peer_vendors/src/screen/addproduct/addproduct.dart';
import 'package:peer_vendors/src/screen/ads.dart';
import 'package:peer_vendors/src/screen/chat.dart';
import 'package:peer_vendors/src/screen/home.dart';
import 'package:sizer/sizer.dart';

class CustomNavigationBarSection extends StatefulWidget {
  const CustomNavigationBarSection({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBarSection> createState() =>
      _CustomNavigationBarSectionState();
}

class _CustomNavigationBarSectionState
    extends State<CustomNavigationBarSection> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePageSection(),
    MyAdsSection(),
    MyChatSection(),
    MyAccountSection(),
    ProductOption(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePageSection();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageStorage(
        bucket: bucket,
        child: currentScreen,
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () async {
          setState(() {
            currentScreen = ProductOption();
            currentTab = 5;
          });
        },
        child: Icon(
          Icons.add_circle_outline,
          color: Colors.black,
          size: 8.w,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 3,
        child: Container(
          height: 8.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePageSection();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = MyAdsSection();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.shopping_cart,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "My Ads",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = MyChatSection();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = MyAccountSection();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.person,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
