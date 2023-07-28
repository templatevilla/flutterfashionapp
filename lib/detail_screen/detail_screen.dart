import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_screens/detail_screen/page_view_clothes.dart';
import 'package:shopping_screens/detail_screen/person_reviews.dart';
import 'package:shopping_screens/detail_screen/rating_text.dart';
import 'package:shopping_screens/detail_screen/reviews_text.dart';
import 'package:shopping_screens/detail_screen/select_size.dart';
import 'package:shopping_screens/detail_screen/womens_blazer_text.dart';
import 'package:shopping_screens/res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';
import 'back_button.dart';
import 'colors_common.dart';
import 'more_details_text.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              const BackButtonCommon(),
              const PageViewClothes(),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const RatingText(),
                    SizedBox(height: 16.h,),
                    const WomenSBlazerText(),
                    SizedBox(height: 10.h,),
                    const MoreDetailsText(),
                    SizedBox(height: 10.h,),
                    const Divider(
                      color: AppColors.divider,
                      thickness: 1,
                    ),
                    SizedBox(height: 10.h,),
                    TextCommon(
                      text: Strings.size,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h,),
                    const SelectSize(),
                    SizedBox(height: 10.h,),
                    const Divider(
                      color: AppColors.divider,
                      thickness: 1,
                    ),
                    SizedBox(height: 10.h,),
                    TextCommon(
                      text: Strings.color,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 15 .h,),
                    const ColorsCommon(),
                    SizedBox(height: 10.h,),
                    const Divider(
                      color: AppColors.divider,
                      thickness: 1,
                    ),
                    SizedBox(height: 15 .h,),
                    const ReviewsText(),
                    SizedBox(height: 15 .h,),
                    const PersonReviews(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton:  Container(
        height: 48.h,
       width: 396.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: BoxDecoration(
          color: AppColors.button,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: TextCommon(
            textColor: AppColors.commonColor,
            fontSize:18.sp,
            text: Strings.addCard,
          ),
        ),
      ),
    );
  }
}
