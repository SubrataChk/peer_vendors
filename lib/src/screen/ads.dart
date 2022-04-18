import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:sizer/sizer.dart';

import '../app/app_color.dart';

class MyAdsSection extends StatefulWidget {
  const MyAdsSection({Key? key}) : super(key: key);

  @override
  State<MyAdsSection> createState() => _MyAdsSectionState();
}

class _MyAdsSectionState extends State<MyAdsSection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                "My Ads",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
                size: 8.w,
              ),
            ),
            Tab(
              child: Text(
                "My Favorites",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
                size: 8.w,
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          //MyAdd
          GridView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return productCard();
              }),

          ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(AppImage.apple)),
                        title: Text(
                          "Apple Watch",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                        subtitle: Text(
                          "Series 7 Black",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        trailing: TextButton(
                            onPressed: () {},
                            child: Text(
                              "\$359",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.sp),
                            ))),
                  ),
                );
              })
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFFFFFF),
          onPressed: () {
            helpsupport(context);
          },
          child: Icon(
            Icons.headphones,
            color: AppColor.welColor,
          ),
        ),
      ),
    );
  }

  Widget productCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 25.h,
        width: 30.w,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -40,
              left: 20,
              right: 20,
              child: Image.asset(
                AppImage.apple,
                height: 15.h,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apple Watch",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Series 7 Black",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "\$359",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
