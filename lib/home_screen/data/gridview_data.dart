import '../../res/constant/colors.dart';
import '../../res/constant/images.dart';
import '../../res/constant/strings.dart';
import '../model/gridview_model.dart';

List<GirdViewModel>girdViewData=[

  GirdViewModel(
    image: Images.womens,
    text: Strings.womensBlezer,
    secondText: Strings.price,
    color: AppColors.cetagioresContainer,

  ),
  GirdViewModel(
      image: Images.womensBlezer,
      text: Strings.womensBlezer,
      secondText: Strings.priceSecond,
    color: AppColors.cetagioresSecond,
  ),
  GirdViewModel(
      image: Images.blueBlazer,
      text: Strings.womensBlezer,
      secondText: Strings.price,
    color: AppColors.cetagioresThird,
  ),
  GirdViewModel(
      image: Images.blazer,
      text: Strings.womensBlezer,
      secondText: Strings.priceSecond,
     color: AppColors.cetagioresFour,
  ),

];