import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';

class onBoardingItems extends StatelessWidget {
  const onBoardingItems({super.key, required this.itemModel});
  final onBoardinItemModel itemModel;
  @override
  Widget build(BuildContext context) {
     final textTheme=Theme.of(context).textTheme;
    return Column(
      children: [
    
    
        Expanded(flex: 2,
          child: Image.asset(itemModel.image,fit: BoxFit.fill,width: 1200,)),
          SizedBox(height: 15,),
        Expanded(
          child: Column(children: [  
          Text(itemModel.title,style:textTheme.titleMedium,),
           SizedBox(height: 15,),
          Text(itemModel.subtitle,style: textTheme.titleSmall,textAlign: TextAlign.center,),],),
        )
      ],
    );
  }
}
