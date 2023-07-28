import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_screens/detail_screen/size_container.dart';

import '../res/constant/strings.dart';

class SelectSize extends StatelessWidget {
  const SelectSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String>text=[
      Strings.S,
      Strings.M,
      Strings.X,
      Strings.xL,
      Strings.xxL,
    ];
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: text.length,
        separatorBuilder: (context, index) => SizedBox(width: 15.h,),
        itemBuilder: (context, index) {
          return SizeContainer(
            index: index,
            text: text[index],
          );
        },
      ),
    );
  }
}
