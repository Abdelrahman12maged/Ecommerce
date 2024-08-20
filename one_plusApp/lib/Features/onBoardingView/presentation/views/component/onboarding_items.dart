import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/data/models/onBoardinItemModels.dart';

class onBoardingItems extends StatelessWidget {
  const onBoardingItems({super.key, required this.itemModel});
  final onBoardinItemModel itemModel;
  @override
  Widget build(BuildContext context) {
     final themdata=Theme.of(context);
    return Column(
      children: [
    
    
        Expanded(flex: 2,
          child: Image.asset(itemModel.image,fit: BoxFit.fill,width: 1200,)),
          SizedBox(height: 15,),
        Expanded(
          child: Column(children: [  
          Expanded(flex: 2,
            child: Text(itemModel.title,style:themdata.textTheme.titleMedium,)),
        
          Expanded(flex: 6,
            child: Text(itemModel.subtitle,style:themdata. textTheme.titleSmall,textAlign: TextAlign.center,)),],),
        )
      ],
    );
  }
}
