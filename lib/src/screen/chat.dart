import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyChatSection extends StatefulWidget {
  const MyChatSection({Key? key}) : super(key: key);

  @override
  State<MyChatSection> createState() => _MyChatSectionState();
}

class _MyChatSectionState extends State<MyChatSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Text(
            "All Users",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: TextFormField(),
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                // flex: 1,
                child: Container(
                  height: 30,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
