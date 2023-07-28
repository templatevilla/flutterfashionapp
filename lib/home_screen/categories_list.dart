import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopping_screens/home_screen/categories_controller.dart';

import '../res/common/text_common.dart';
import '../res/constant/colors.dart';
import '../res/constant/strings.dart';

class CategoriesList extends StatelessWidget {
  final String?image;
  final String?text;
  final int index;
  const CategoriesList({Key? key, this.image, this.text, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoriesController categoriesController=Get.put(CategoriesController());
     return  Obx(() {
      bool isSelect = categoriesController.index.value == index;
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              categoriesController.index.value=index;
              categoriesController.update();
            },
            child: Container(
              height: 60.h,
              width: 60.h,
              decoration:isSelect? const BoxDecoration(
                color: AppColors.textColor,
                shape: BoxShape.circle,
              ):
               BoxDecoration(
              color: AppColors.commonColor,
              shape: BoxShape.circle,
                border: Border.all(
              color: AppColors.textField,
              width: 2
          ),
          ),
                  child: Center(
                    child: Image.asset(image!,width: 40.h,height: 35.h,
                  color: isSelect?AppColors.commonColor:AppColors.textColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h,),
          TextCommon(
            text:text?? Strings.nike,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textColor: AppColors.textColor,
          ),
        ],
      );
    }
    );
  }
}
