import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimansions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              // this determine the height of the appBar after minimized
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            // this for appBar After Scrolling
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            // determine the height before minmized it
            expandedHeight: 300,
            // this is for set the image
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // used in the body
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableTextWidget(
                    text:
                        "this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI ,this is New UI , this is New UI ,this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI ,this is New UI , this is New UI ,this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI , this is New UI ,this is New UI , this is New UI ,this is New UI , this is New UI , this is New UI , this is New UI , ",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
