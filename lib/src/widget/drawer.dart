import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:sizer/sizer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: AppColor.btnColor,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(AppImage.logo),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "Subrata Chakraborty",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.sp),
                    ),
                    Text("email@gmail.com")
                  ],
                ),
              ),
            ),
            CustomListTiles(
              title: "Account Metrics",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "Help & Support",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "Contact Us",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "Share App",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "Rate Us",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "FAQ",
            ),
            CustomDivider(),
            CustomListTiles(
              title: "Privacy Policy",
            ),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Divider(
        color: Colors.grey,
      ),
    );
  }
}

class CustomListTiles extends StatelessWidget {
  final String title;
  const CustomListTiles({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 4.w, backgroundColor: Colors.grey),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
      ),
    );
  }
}
