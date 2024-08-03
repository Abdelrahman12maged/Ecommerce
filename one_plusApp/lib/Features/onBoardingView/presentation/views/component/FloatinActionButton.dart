import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/core/utils/appRouter.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton(
      {super.key, required this.pagecontroller, required this.islast});

  final PageController pagecontroller;
  bool islast = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    

    final buttonSize = screenWidth * 0.12; 
    final iconSize = buttonSize * 0.5; 
    

    return Container(
      width:buttonSize,height:buttonSize,
      child: FloatingActionButton(
              child:  Icon(size: iconSize,
          Icons.arrow_forward_ios),
        onPressed: () {
          if (islast) {
          //  print("last");
            GoRouter.of(context).push(AppRouter.kSignUpView);
          } else {
            print("not lastt");
            pagecontroller.nextPage(
                duration: Duration(milliseconds: 750),
                curve: Curves.fastLinearToSlowEaseIn);
          }
        },
      ),
    );
  }
}
