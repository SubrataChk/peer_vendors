import 'package:flutter/material.dart';
import 'package:peer_vendors/src/app/app_color.dart';
import 'package:peer_vendors/src/app/app_image.dart';
import 'package:peer_vendors/src/utils/done.dart';
import 'package:peer_vendors/src/widget/button.dart';

import 'package:sizer/sizer.dart';

class ProductOption extends StatefulWidget {
  const ProductOption({Key? key}) : super(key: key);

  @override
  State<ProductOption> createState() => _ProductOptionState();
}

class _ProductOptionState extends State<ProductOption> {
  bool navigateToPage = false;

  List option = [
    "Cars, Bikes, Bicycles",
    "Cars, Bikes, Bicycles",
    "Cars, Bikes, Bicycles",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.btnColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sell",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, top: 6.h, bottom: 1.h),
            child: Text(
              "Choose a Category",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22.sp),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: option.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                      child: Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Radio(
                                value: 1,
                                groupValue: navigateToPage,
                                onChanged: (value) {
                                  setState(() {
                                    navigateToPage = true;
                                  });
                                  if (navigateToPage) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductSelection()));
                                  }
                                }),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(option[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp))
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}

class ProductSelection extends StatefulWidget {
  const ProductSelection({Key? key}) : super(key: key);

  @override
  State<ProductSelection> createState() => _ProductSelectionState();
}

class _ProductSelectionState extends State<ProductSelection> {
  bool navigateToPage = false;
  List optionCat = [
    "Cars",
    "Bikes",
    "Bicycles",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.btnColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sell",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, top: 6.h, bottom: 1.h),
            child: Text(
              "Choose a Sub Category",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22.sp),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: optionCat.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                      child: Container(
                        height: 7.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: navigateToPage,
                              onChanged: (value) {
                                setState(() {
                                  navigateToPage = true;
                                });
                                if (navigateToPage) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddProductSection()));
                                }
                              },
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(optionCat[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp))
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}

class AddProductSection extends StatefulWidget {
  const AddProductSection({Key? key}) : super(key: key);

  @override
  State<AddProductSection> createState() => _AddProductSectionState();
}

class _AddProductSectionState extends State<AddProductSection> {
  List citems = [
    "Bangladesh",
    "Canada",
    "India",
    "Pakistan",
  ];
  String? cselectItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.btnColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Product Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.h, top: 4.h),
              child: Text(
                "Complete All the fields with valid information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
            ),
            const ProductTextForm(
              maxLine: 1,
              hintText: "Product Title",
            ),
            const ProductTextForm(
              maxLine: 7,
              hintText: "Product Title",
            ),
            const ProductTextForm(
              maxLine: 1,
              hintText: "Price",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: SizedBox(
                width: double.infinity,
                height: 8.h,
                child: DropdownButtonFormField(
                  hint: const Text("Select your Country"),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black))),
                  onChanged: (value) {
                    setState(() {
                      cselectItems = value.toString();
                    });
                  },
                  value: cselectItems,
                  items: citems
                      .map((citems) => DropdownMenuItem(
                          value: citems,
                          child: Text(
                            citems,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12.sp),
                          )))
                      .toList(),
                ),
              ),
            ),
            const ProductTextForm(
              maxLine: 1,
              hintText: "Location",
            ),
            CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PicImagePageSection()));
                },
                title: "Continue")
          ],
        ),
      )),
    );
  }
}

class ProductTextForm extends StatelessWidget {
  final String hintText;
  final int maxLine;
  const ProductTextForm(
      {Key? key, required this.hintText, required this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      child: TextFormField(
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(15),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class PicImagePageSection extends StatefulWidget {
  const PicImagePageSection({Key? key}) : super(key: key);

  @override
  State<PicImagePageSection> createState() => _PicImagePageSectionState();
}

class _PicImagePageSectionState extends State<PicImagePageSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.btnColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Choose Images",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Colors.black),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.w, top: 6.h, bottom: 1.h),
                child: Text(
                  "Add 1 or more images",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For best result provide a square picture. Do not reduce the width of the picture in the cropping tools and do not increase the height of the picture in the cropping tool. ",
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Need Help?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blueAccent),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                      elevation: 2,
                      child: Container(
                        height: 10.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add_circle_outline,
                          size: 10.w,
                          color: AppColor.welColor,
                        ),
                      )),
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // mainAxisExtent: 120,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 3,
                    childAspectRatio: 0.9),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                AppImage.ipad,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WellDonePage()));
                  },
                  title: "Continue")
            ],
          ),
        )));
  }
}
