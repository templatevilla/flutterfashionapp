import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/strings.dart';

class WomenSBlazerText extends StatelessWidget {
  const WomenSBlazerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextCommon(
          text: Strings.womensBlezer,
          fontWeight: FontWeight.bold,
          fontSize: 30.sp,
        ),
        TextCommon(
          text: Strings.price,
          fontWeight: FontWeight.bold,
          fontSize: 22.sp,
        ),
      ],
    );
  }
}
