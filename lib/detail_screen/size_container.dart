import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_screens/home_screen/categories_controller.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class SizeContainer extends StatelessWidget {
  final String?text;
  final int index;
  const SizeContainer({Key? key, this.text, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CategoriesController categoriesController=Get.find();
    return  Obx(() {
      bool isSelect = categoriesController.size.value == index;
      return  GestureDetector(
        onTap: () {
          categoriesController.size.value=index;
          categoriesController.update();
        },
        child: Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            color:isSelect? AppColors.textColor:AppColors.sizeContainer,
            borderRadius: BorderRadius.circular(16.sp),
          ),
          child:  Center(
            child: TextCommon(
              fontWeight: FontWeight.w600,
              text: text??Strings.S,
              textColor: isSelect? AppColors.commonColor:AppColors.textColor,
            ),
          ),
        ),
      );
    },
    );
  }
}
