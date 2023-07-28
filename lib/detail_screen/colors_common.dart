import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_screens/home_screen/categories_controller.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import 'color_container.dart';

class ColorsCommon extends StatelessWidget {
  const ColorsCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color>color=[
      AppColors.colorContainer,
      AppColors.colorSecond,
      AppColors.colorThird,
    ];

    CategoriesController categoriesController=Get.find();
    return  Obx(() {
      return  Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: color.length,
                separatorBuilder: (context, index) => SizedBox(width: 15.h),
                itemBuilder: (context, index) {
                  return ColorContainer(
                    index: index,
                    color: color[index],
                  );
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if(categoriesController.cartCount.value>1){
                categoriesController.cartCount.value=categoriesController.cartCount.value-1;
                categoriesController.update();
              }
            },
            child: Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                color: AppColors.sizeContainer,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child:Icon(
                  Icons.remove,color: Colors.black,size: 22.h
              ),
            ),
          ),
          SizedBox(width: 10.h),

          TextCommon(
           text: categoriesController.cartCount.value.toString(),
            fontWeight: FontWeight.w600,
          ),
          SizedBox(width: 10.h),
          GestureDetector(
            onTap: () {
              categoriesController.cartCount.value=categoriesController.cartCount.value+1;
              categoriesController.update();
            },
            child: Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                color: AppColors.sizeContainer,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child:Icon(
                  Icons.add,color: Colors.black,size: 22.h
              ),
            ),
          ),
        ],
      );
    },
    );
  }
}
