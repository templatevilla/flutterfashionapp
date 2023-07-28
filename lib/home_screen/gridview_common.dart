import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_screens/utils/common_method.dart';
import 'package:shopping_screens/utils/routs_name.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class GridViewCommon extends StatelessWidget {
  final String? image;
  final String? text;
  final String? secondText;
  final Color? color;
  const GridViewCommon({Key? key, this.image, this.text, this.secondText, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     GestureDetector(
      onTap: () {
        CommonMethod.sendToNextScreen(context, RoutesPath.detailScreen);
      },
      child: Container(
            decoration: BoxDecoration(
            color: color??AppColors.cetagioresContainer,
            borderRadius: BorderRadius.circular(16.h)
        ),
        child: Column(
          children: [
            Image.asset(image??Images.womens,height: 180.h,width: 156.h,),
             TextCommon(
              text: text??Strings.womensBlezer,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 6.h,),
             TextCommon(
              text:secondText?? Strings.price,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
