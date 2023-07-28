import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.only(right: 16.h,left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCommon(
            text: Strings.categories,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
          TextCommon(
            text: Strings.viewAll,
            fontSize: 14.sp,
            textColor: AppColors.hintText,
          ),
        ],
      ),
    );
  }
}
