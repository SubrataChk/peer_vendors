import 'package:flutter/cupertino.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 7.w,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                flex: 1,
                child: Container(
                    height: 5.h,
                    width: 4.w,
                    child: ElevatedButton(
                        onPressed: () {}, child: Icon(Icons.add))),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            "https://www.varietyinsight.com/images/honoree/Tom_Cruise.png"),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bozenka Malina",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              "Uploaded File",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}
