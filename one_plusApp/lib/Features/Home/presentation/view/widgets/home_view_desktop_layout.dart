import 'package:flutter/material.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/porduct_banners.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_card.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_category_list.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ProductCategorylistItems(),
          ],
        )
        //Expanded(child: ProductBanner()),
        //ProductListView()
      ],
    );
  }
}
