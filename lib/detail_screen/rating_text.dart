import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class RatingText extends StatelessWidget {
  const RatingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(Images.star,height: 24.h,),
        SizedBox(width: 15.h,),
        const TextCommon(
          text: Strings.rating,
          fontWeight: FontWeight.w600,
          textColor: AppColors.hintText,
        ),
      ],
    );
  }
}
