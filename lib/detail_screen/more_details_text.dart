import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class MoreDetailsText extends StatelessWidget {
  const MoreDetailsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ExpandableText(
      Strings.read,
      style:  TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.hintText,
      ),
      expandText: Strings.readMore,
      collapseText: Strings.readLess,
      maxLines: 2,
      linkColor: AppColors.textColor,
      linkStyle:  TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.hintText,
      ),
    );
  }
}
