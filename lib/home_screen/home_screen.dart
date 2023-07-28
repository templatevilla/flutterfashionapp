
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_screens/home_screen/search_bar.dart';
import 'package:shopping_screens/home_screen/select_clothes.dart';
import 'package:shopping_screens/home_screen/slaider.dart';
import 'categories_list_data.dart';
import 'categories_text.dart';
import 'clothes_collection_text.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 68.h,),
            const ClothesCollectionText(),
            SizedBox(height: 24.h,),
            const SearchBars(),
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                   const SliderCommon(),
                  SizedBox(height: 24.h,),
                const CategoriesText(),
                   SizedBox(height: 20.h,),
                  const CategoriesListData(),
                  const SelectClothes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
