import 'package:peer_vendors/src/app/app_image.dart';

class SlideModel {
  final String imgUrl;
  final String title;
  final String description;
  SlideModel(
      {required this.description, required this.imgUrl, required this.title});
}

final sliderList = [
  SlideModel(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. ",
      imgUrl: AppImage.slideOne,
      title: "Welcome To Peer Vendor"),
  SlideModel(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. ",
      imgUrl: AppImage.slideTwo,
      title: "Find Your Favourite Products"),
  SlideModel(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. ",
      imgUrl: AppImage.slideThree,
      title: "Buy & Sell Around You"),
  SlideModel(
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. ",
      imgUrl: AppImage.slideFour,
      title: "Safe & Trusted"),
];
