import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class ReviewsText extends StatelessWidget {
  const ReviewsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Expanded(
          child: TextCommon(
            text: Strings.reviews,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        TextCommon(
          text: Strings.viewAll,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          textColor: AppColors.hintText,
        ),
      ],
    );
  }
}
