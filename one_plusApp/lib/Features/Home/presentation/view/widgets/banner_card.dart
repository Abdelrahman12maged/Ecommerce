import 'package:flutter/material.dart';

class bannerCard extends StatelessWidget {
   bannerCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {

    
    return Container(
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}