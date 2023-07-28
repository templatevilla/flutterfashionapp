import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/constant/images.dart';
import '../utils/common_method.dart';
import '../utils/routs_name.dart';

class BackButtonCommon extends StatelessWidget {
  const BackButtonCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              CommonMethod.popScreen(context, RoutesPath.homeScreen);
            },
            child: Image.asset(Images.back,height: 24.h,)),
        Image.asset(Images.bag,height: 24.h,width: 24.h,),
      ],
    );
  }
}
