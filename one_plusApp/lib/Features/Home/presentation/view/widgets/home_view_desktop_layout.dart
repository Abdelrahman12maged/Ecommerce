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
            AllProductsListsSections(),


 Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(), // Adds borders to the table
          columnWidths: const {
            0: FlexColumnWidth(1), // Column 1 takes 1 part of the space
            1: FlexColumnWidth(2), // Column 2 takes 2 parts of the space
            2: FlexColumnWidth(1), // Column 3 takes 1 part of the space
          },
          children: [
            // Row 1
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Header 1'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Header 2'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Header 3'),
                ),
              ],
            ),
            // Row 2
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 1'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 2'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 3'),
                ),
              ],
            ),
            // Row 3
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 1'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 2'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 3'),
                ),
              ],
            ),
          ],
        ),
      ),
  


          ],
        ),
      ),
    );
  }
}

