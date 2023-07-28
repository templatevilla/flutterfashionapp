import 'package:get/get.dart';

class CategoriesController extends GetxController{
  RxBool isSelected = false.obs;
  RxInt index=0.obs;
  RxInt size=1.obs;
  RxInt color=1.obs;
  RxInt  cartCount = 1.obs;
  RxInt pageIndex=0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    isSelected.value;
    update();
    super.onInit();
  }
}