import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:sizer/sizer.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  const SlideDots({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: isActive ? AppColor.welColor : Colors.grey,
      ),
      duration: Duration(
        microseconds: 250,
      ),
    );
  }
}
