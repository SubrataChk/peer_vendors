import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../model/slidemodel.dart';

class SlideItems extends StatelessWidget {
  final int index;
  const SlideItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.h,
          // width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(sliderList[index].imgUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          child: Text(
            sliderList[index].title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Text(
            sliderList[index].description,
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}
