import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class PersonReviews extends StatelessWidget {
  const PersonReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(Images.rating,height: 40,),
            SizedBox(width: 15 .h,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCommon(
                    fontWeight: FontWeight.w600,
                    text: Strings.marvinMcKinney,
                    fontSize: 18.sp,
                  ),
                  TextCommon(
                    fontWeight: FontWeight.w600,
                    text: Strings.min,
                    fontSize: 14.sp,
                    textColor: AppColors.hintText,
                  ),
                ],
              ),
            ),
            Image.asset(Images.star,height: 24.h,),
            SizedBox(width: 15.h,),
            TextCommon(
              fontWeight: FontWeight.w600,
              text: Strings.ratingSecond,
              fontSize: 15.sp,
              textColor: AppColors.hintText,
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        TextCommon(
          fontWeight: FontWeight.w600,
          text: Strings.moreText,
          fontSize: 15.sp,
          textColor: AppColors.hintText,
        ),
      ],
    );
  }
}
