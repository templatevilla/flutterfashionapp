import 'package:flutter/cupertino.dart';
import 'package:shopping_screens/utils/routs_name.dart';

import '../detail_screen/detail_screen.dart';
import '../home_screen/home_screen.dart';


class AppRouts{
  static Map<String,WidgetBuilder>routs={
    RoutesPath.detailScreen:(context) => const DetailScreen(),
    RoutesPath.homeScreen:(context) => const HomeScreen(),
  };
}