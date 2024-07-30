
import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/widgets/FloatinActionButton.dart';
import 'package:one_plus/Features/onBoardingView/widgets/Indicator.dart';
import 'package:one_plus/Features/onBoardingView/widgets/onBoardingitems.dart';

import '../../../generated/l10n.dart';

class PageViewBuilder extends StatefulWidget {
  PageViewBuilder(
      {super.key,
     // required this.boardcontroller,
      required this.items,
  //    required this.islast
      
      });

  List<onBoardinItemModel> items;
  var boardcontroller = PageController();
  bool islast = false;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                if (value == widget.items.length - 1) {
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
              itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  onBoardingItems(itemModel: widget.items[index]),
            ),
          ),
      
           Row(
                children: [
                  Indicator(pagecontroller: widget.boardcontroller, items: widget.items),
                  const Spacer(),
                  FloatinButton(pagecontroller: widget.boardcontroller,islast: widget.islast,)
                ],
              ),
        ],
      ),
    );
  }
}
