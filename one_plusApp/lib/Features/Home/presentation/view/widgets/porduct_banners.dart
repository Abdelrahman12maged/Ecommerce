import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/assetsImages.dart';

class ProductBanner extends StatefulWidget {
  @override
  _BannerCarouselState createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<ProductBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> imageList = [
  
   Assets.imagesImg2Mobile,
   Assets.imagesImg2Mobile,
   Assets.imagesImg2Mobile,
  
  ];

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    Future.delayed(Duration(seconds: 3), () {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % imageList.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
        setState(() {
          _currentPage = nextPage;
        });
        _startAutoPlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imageList[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Row(
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
        ),
      ],
    );
  }
}
