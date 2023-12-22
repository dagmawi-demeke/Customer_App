import 'package:customer_app/pages/home/food_page_body.dart';
import 'package:customer_app/utils/colors.dart';
import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/big_text.dart';
import 'package:customer_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          children: [
            Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const BigText(text: "Ethiopia",color: AppColors.mainColor,),
                     Row(

                        children: [
                          SmallText(text: 'Addis Ababa',color: Colors.black54,),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.height45,
                      width: Dimensions.width45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor
                      ),
                      child: Icon(Icons.search, color: Colors.white,size: Dimensions.iconSize24,),
                    ),
                  ),
                ],
              ),
            ),
      ),
            const Expanded(child: SingleChildScrollView(child: FoodPageBody()))
          ],
        ),
    );
  }
}
