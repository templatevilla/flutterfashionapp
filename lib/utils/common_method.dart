import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CommonMethod{
  static sendToNextScreen(BuildContext context,String routes){
    Get.toNamed(routes);
  }
  static popScreen(BuildContext context,String routes){
    Get.back();
}
  static pushRemoveUntil(BuildContext context,String routes) {
    Get.offAllNamed(routes);
  }
  // static double getPercentSize(double total, double percent) {
  //   return (total * percent) / 100;
  // }
}