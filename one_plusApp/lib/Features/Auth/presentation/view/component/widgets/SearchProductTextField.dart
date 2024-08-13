import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

import '../../../../../../generated/l10n.dart';

class SearchProductTextField extends StatelessWidget {
  const SearchProductTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(textDirection: TextDirection.ltr,
      children: [
        Expanded( 
          child: TextFormField(
            decoration: InputDecoration(filled: true,
              fillColor:AppColorsLight.textFormSearchProductFilledcolor ,
              hintText:S.of(context).serchproducthere ,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20),
                ),
              ),
            ),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        Container(height: 50,
          decoration: BoxDecoration(
            color: AppColorsLight.customButtonMaincolor,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20),
            ),
          ),
       
          child:IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
