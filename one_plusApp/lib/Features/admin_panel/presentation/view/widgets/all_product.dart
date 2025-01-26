import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/Custombutton.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/add_product_dialog.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'package:one_plus/core/utils/assetsImages.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

import 'admin_product_card.dart';
import '../../../../Home/presentation/view/widgets/product_card.dart';

class AllProductpanel extends StatelessWidget {
  const AllProductpanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Text("All product"),
                Spacer(),
                CustomButton(
                  background: Colors.white,
                  style: TextStyle(color: Color.fromARGB(255, 224, 89, 80)),
                  border: Border.all(
                      color: const Color.fromARGB(255, 224, 89, 80),
                      width: 2.0),
                  function: () {
                     showDialog(
                      context: context,
                      builder: (context) {
                        return AddProductDialog();
                      },
                    );
                  },
                  text: "upload product",
                  height: 40,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: SizeConfig.width < 1000 ? 2 : 4),
              itemBuilder: (context, index) => AdminProductCard(
                  imageUrl: Assets.imagesBoAt,
                  productName: "product name",
                  price: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
