import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_screens/home_screen/categories_controller.dart';

import '../res/constant/colors.dart';
import '../res/constant/images.dart';

class PageViewClothes extends StatelessWidget {
  const PageViewClothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController =PageController();
    List<String>images=[
      Images.frame,
      Images.frameSecond,
      Images.frame,
    ];
   CategoriesController categoriesController=Get.find();
    return Obx(() {
      return    Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              itemCount: images.length,
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              // pageSnapping: true,
              onPageChanged: (value) {
                categoriesController.pageIndex.value=value;
                categoriesController.update();
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                Image.asset(images[index],height: 317.h,width: 267.h),
            ),
          ),
          DotsIndicator(
            dotsCount: 3,
            position: categoriesController.pageIndex.value,
            decorator: DotsDecorator(
              color:  AppColors.indicator,
              activeColor: AppColors.textColor,
              shape: RoundedRectangleBorder(borderRadius:
              BorderRadius.circular(5.0)) ,
              activeShape: RoundedRectangleBorder(borderRadius:
              BorderRadius.circular(5.0)),
            ),
          ),
        ],
      );
    },);
  }
}
