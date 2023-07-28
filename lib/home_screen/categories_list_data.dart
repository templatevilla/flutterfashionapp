import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/categories_data.dart';
import 'categories_list.dart';

class CategoriesListData extends StatelessWidget {
  const CategoriesListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesData.length,
        separatorBuilder: (context, index) => SizedBox(width: 25.h,),
        itemBuilder: (context, index) => CategoriesList(
          text: categoriesData[index].text,
          image: categoriesData[index].image,
          index: index,
        ),
      ),
    );
  }
}
