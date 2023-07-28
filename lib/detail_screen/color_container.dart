import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../home_screen/categories_controller.dart';
import '../res/constant/colors.dart';

class ColorContainer extends StatelessWidget {
  final int index;
  final Color? color;
  const ColorContainer({Key? key, required this.index, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  CategoriesController categoriesController=Get.find();
    return Obx(() {
      bool isSelect=categoriesController.color.value==index;
      return  GestureDetector(
        onTap: () {
          categoriesController.color.value=index;
          categoriesController.update();
        },
        child: Container(
          height: isSelect?35.h:32.h,
          width:  isSelect?35.h:32.h,
          decoration: isSelect?BoxDecoration(
              color: color??AppColors.colorContainer,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: AppColors.textColor,
              )
          ):BoxDecoration(
              color: color??AppColors.colorContainer,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.transparent,
              )
          ),
        ),
      );
    },);
  }
}
