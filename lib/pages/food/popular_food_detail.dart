import 'package:customer_app/utils/colors.dart';
import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/app_column.dart';
import 'package:customer_app/widgets/app_icon.dart';
import 'package:customer_app/widgets/big_text.dart';
import 'package:customer_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/food0.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height45,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - Dimensions.height20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius30),
                      topLeft: Radius.circular(Dimensions.radius30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: 'Doro Wat',
                      size: Dimensions.font26,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const BigText(text: "Description"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const Expanded(
                      child:  SingleChildScrollView(
                        child: ExpandableTextWidget(
                              text:"The plagiarism checker is part of a robust writing app"
                                  " that offers advanced feedback on writing mechanics like grammar "
                                  "and spelling as well as more complex stylistic issues like word choice,"
                                  " conciseness, tone, and more."
                                  "The plagiarism checker is part of a robust writing app"
                                  " that offers advanced feedback on writing mechanics like grammar "
                                  "and spelling as well as more complex stylistic issues like word choice,"
                                  " conciseness, tone, and more.",
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.bottomBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius20 * 2),
              topLeft: Radius.circular(Dimensions.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.width20 - 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20)),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove_rounded,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const BigText(
                    text: "0",
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(Dimensions.width20 - 2),
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20)),
                child: const BigText(
                  text: "600ETB | Add to cart",
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
