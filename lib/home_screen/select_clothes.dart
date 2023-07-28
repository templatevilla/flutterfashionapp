import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gridview_common.dart';
import 'data/gridview_data.dart';

class SelectClothes extends StatelessWidget {
  const SelectClothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: EdgeInsets.only(left: 16.h,right: 16.h),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: girdViewData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        mainAxisExtent: 240.h,
      ),
      itemBuilder: (context, index) =>GridViewCommon(
        text: girdViewData[index].text,
        image: girdViewData[index].image,
        secondText: girdViewData[index].secondText,
        color:girdViewData[index].color,
      ),
    );
  }
}
