import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/common/text_common.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class ClothesCollectionText extends StatelessWidget {
  const ClothesCollectionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 16.h,left: 16.h),
      child: Row(
        children: [
          Expanded(
            child: TextCommon(
              text: Strings.clothesCollection,
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(Images.bag,height: 19.h,),
          SizedBox(width: 16.h,),
          Image.asset(Images.collectionImage,height: 40.h,),
        ],
      ),
    );
  }
}
