import 'package:customer_app/utils/colors.dart';
import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/app_icon.dart';
import 'package:customer_app/widgets/big_text.dart';
import 'package:customer_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2, bottom: Dimensions.height10),
                child: Center(
                  child: BigText(
                    text: "Ethiopian Doro wat",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.popularFoodImageSize,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: const Column(
                children: [
                  ExpandableTextWidget(
                    text:
                        "The plagiarism checker is part of a robust writing app"
                        " that offers advanced feedback on writing mechanics like grammar "
                        "and spelling as well as more complex stylistic issues like word choice,"
                        " conciseness, tone, and more."
                        "The plagiarism checker is part of a robust writing app"
                        " that offers advanced feedback on writing mechanics like grammar "
                        "and spelling as well as more complex stylistic issues like word choice,"
                        " conciseness, tone, and more."
                        "The plagiarism checker is part of a robust writing app"
                        " that offers advanced feedback on writing mechanics like grammar "
                        "and spelling as well as more complex stylistic issues like word choice,"
                        " conciseness, tone, and more.",
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: "ETB 270" + " X " + " 0 ",
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
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
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                      size: Dimensions.iconSize24,
                    )),
                Container(
                  padding: EdgeInsets.all(Dimensions.width20 - 2),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: const BigText(
                    text: "600ETB | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
