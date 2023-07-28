import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class AddCartContainer extends StatelessWidget {
  const AddCartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.h,
      color: AppColors.commonColor,
      child: Center(
        child: Container(
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
      ),
    );
  }
}
