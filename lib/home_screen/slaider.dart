import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class SliderCommon extends StatelessWidget {
  const SliderCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color>list=[
      AppColors.containerColor,
      AppColors.secondContainer,
      AppColors.thirdContainer,

    ];
    CarouselController controller= CarouselController();
    return  CarouselSlider.builder(
      carouselController: controller,
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Padding(
          padding:  EdgeInsets.only(left: 10.h,right: 10.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 140.h,
                width: double.infinity,
                margin: EdgeInsets.only(top: 16.h),
                decoration: BoxDecoration(
                  color: list[index],
                  borderRadius:BorderRadius.circular(16.r),
                ),
                child:Padding(
                  padding:  EdgeInsets.only(left: 17.h,top: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextCommon(
                        text: Strings.fiftyOff,
                        textColor: AppColors.commonColor,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 4.h,),
                      TextCommon(
                        text: Strings.newCollections,
                        textColor: AppColors.commonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                      ), SizedBox(height: 16.h,),
                      Container(
                        height: 32.h,
                        width: 105.h,
                        decoration: BoxDecoration(
                          color: AppColors.commonColor,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child:  Center(
                          child: TextCommon(
                            text: Strings.shopNow,
                            textColor:list[index],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(Images.youngWoman,
                  height: 157.h,
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 150.0,
        enlargeCenterPage: false,
        autoPlay: true,
        disableCenter: true,
        pauseAutoPlayOnTouch: false,
        autoPlayCurve: Curves.easeIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
