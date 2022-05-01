import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:sizer/sizer.dart';

class MyAccountSection extends StatefulWidget {
  const MyAccountSection({Key? key}) : super(key: key);

  @override
  State<MyAccountSection> createState() => _MyAccountSectionState();
}

class _MyAccountSectionState extends State<MyAccountSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.btnColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18.sp),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          CustomListTiles(title: "Edit Profile"),
          CustomListTiles(title: "Language"),
          CustomListTiles(title: "log out"),
          CustomListTiles(title: "Deativate Profile"),
        ],
      )),
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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: CircleAvatar(radius: 4.w, backgroundColor: Colors.grey),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}
