import 'package:flutter/material.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/all_products_lists_sections.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/porduct_banners_list.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_card.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_category_list.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ProductCategorylistItems(),
            ProductBanner(),
            AllProductsListsSections()
          ],
        ),
      ),
    );
  }
}

