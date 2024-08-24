import 'package:flutter/material.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_card.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/product_cards_list.dart';

class AllProductsListsSections extends StatelessWidget {
  const AllProductsListsSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
        Text(
          "mobiles",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        ProductListView(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
