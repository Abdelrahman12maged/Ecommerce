import 'package:flutter/material.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/dots_banner.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/banner_card.dart';
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
        Container(
          height: 250,
          
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return bannerCard(image: imageList[index]);
            },
          ),
        ),
                DotsWidget(imageList: imageList, currentPage: _currentPage),

      ],
    );
  }
}
      //  DotsWidget(imageList: imageList, currentPage: _currentPage),


