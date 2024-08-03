
import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/data/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/FloatinActionButton.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/Indicator.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/onBoardingitems.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

import '../../../../../generated/l10n.dart';

class PageViewBuilder extends StatefulWidget {
  PageViewBuilder(
      {super.key,
  
      
      });

  var boardcontroller = PageController();
  bool islast = false;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
        final List<onBoardinItemModel> items = [
      onBoardinItemModel(
        image: Assets.imagesOnbo1,
        title: S.of(context).title1,
        subtitle: S.of(context).subtitle1,
      ),
      onBoardinItemModel(
        image: Assets.imagesObo2,
        title: S.of(context).title2,
        subtitle: S.of(context).subtitle2,
      ),
      onBoardinItemModel(
        image: Assets.imagesObo3,
        title: S.of(context).title3,
        subtitle: S.of(context).subtitle3,
      ),
    ];
    return Column(
      children: [
        Expanded(flex: 6,
          child: PageView.builder(
            onPageChanged: (value) {
              if (value == items.length - 1) {
                print("last");
                setState(() {
                  widget.islast = true;
                });
              } else {
                setState(() {
                  widget.islast = false;
                });
              }
            },
            controller: widget.boardcontroller,
            physics: BouncingScrollPhysics(),
            itemCount:items.length,
            itemBuilder: (context, index) =>
                onBoardingItems(itemModel: items[index]),
          ),
        ),
    
                      Expanded(flex: 1,
                        child: Row(
                                      children: [
                                        Indicator(pagecontroller: widget.boardcontroller, items:items),
                                        const Spacer(),
                                        FloatingButton(pagecontroller: widget.boardcontroller,islast: widget.islast,)
                                      ],
                                    ),
                      ),
      ],
    );
  }
}
