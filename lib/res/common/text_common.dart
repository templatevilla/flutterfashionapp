import 'package:flutter/material.dart';

import '../constant/colors.dart';

class TextCommon extends StatelessWidget {
  final String?text;
  final double?fontSize;
  final FontWeight?fontWeight;
  final Color?textColor;
  final TextAlign?textAlign;
  const TextCommon({Key? key, this.text, this.fontSize, this.fontWeight, this.textColor, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text??"",
      textAlign: textAlign,
      style: TextStyle(
        fontSize:fontSize?? 16,
        fontWeight:fontWeight?? FontWeight.w400,
        color: textColor??AppColors.textColor,
        fontFamily: "",
      ),
    );
  }
}
