import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    super.key,
    required this.imageList,
    required int currentPage,
  }) : _currentPage = currentPage;

  final List<String> imageList;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imageList.length, (index) {
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index
                ? Colors.blueAccent
                : Colors.grey,
          ),
        );
      }),
    );
  }
}

