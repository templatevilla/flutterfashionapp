import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/constant/colors.dart';
import '../res/constant/images.dart';
import '../res/constant/strings.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController =TextEditingController();
    return  Padding(
      padding:  EdgeInsets.only(right: 16.h,left: 16.h),
      child: TextField(
        style:  TextStyle(
          fontSize: 15.sp,
          color: AppColors.textColor,
        ),
        textInputAction:TextInputAction.done,
        controller:textEditingController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            borderSide:  const BorderSide(
              width: 2,
              color:  AppColors.textField,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color:  AppColors.textColor,
            ),
          ),
          prefixIcon:Image.asset(
            Images.search,
          ),
          suffixIcon:Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              //  const VerticalDivider(
              //   thickness: 2,
              //   color: Colors.red,
              //   indent: 30,
              //   endIndent: 10,
              // ),
              Container(width: 2.h,color: AppColors.textField,height: 32.h,),
              SizedBox(width: 16.h,),
              Image.asset(Images.filter,height: 21.h,),
              SizedBox(width: 16.h,)
            ],
          ),
          hintText: Strings.search,
          hintStyle:  TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color:AppColors.hintText
          ),
        ),
      ),
    );
  }
}
