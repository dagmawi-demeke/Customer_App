import 'package:customer_app/utils/colors.dart';
import 'package:customer_app/utils/dimensions.dart';
import 'package:customer_app/widgets/app_column.dart';
import 'package:customer_app/widgets/big_text.dart';
import 'package:customer_app/widgets/small_text.dart';
import 'package:customer_app/widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _height = Dimensions.pageViewContainer;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //for the scroll
        SizedBox(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //for the dots indicator
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: Size.square(Dimensions.height10 / 1.1),
            activeColor: AppColors.mainColor,
            activeSize: Size(Dimensions.iconSize24, Dimensions.height10 / 1.1),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius20 / 4)),
          ),
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        //for the popular title
        Container(
          padding: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: SmallText(text: "Food Pairing"),
              )
            ],
          ),
        ),
        //for popular food image, title and ratings
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    Container(
                      height: Dimensions.pageViewTextContainer,
                      width: Dimensions.pageViewTextContainer,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/food1.png"),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: Dimensions.width10),
                        height: Dimensions.listViewTextContainerSize,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius15),
                                bottomRight:
                                    Radius.circular(Dimensions.radius15))),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const BigText(
                                  text: "Delicious Ethiopian Doro wat"),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              SmallText(text: "With Ethiopian characteristics"),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndText(
                                    text: "Normal",
                                    icon: Icons.circle_sharp,
                                    iconColor: AppColors.iconColor1,
                                  ),
                                  IconAndText(
                                    text: "13KM",
                                    icon: Icons.location_on,
                                    iconColor: AppColors.iconColor2,
                                  ),
                                  IconAndText(
                                    text: "32min",
                                    icon: Icons.access_time,
                                    iconColor: AppColors.mainColor,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? Colors.blueGrey : Colors.tealAccent,
                image: const DecorationImage(
                    image: AssetImage("assets/images/food0.png"),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(0, 5)),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width15,
                    right: Dimensions.width15,
                    top: Dimensions.height15),
                child: AppColumn(text: 'Doro Wat',),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
