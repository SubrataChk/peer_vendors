import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  const CustomTextForm({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(6), hintText: hintText),
      ),
    );
  }
}
