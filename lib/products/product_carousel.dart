import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  final List<String> imagesPath = [
    'assets/images/cctv_1.png',
    'assets/images/cctv_2.png',
    'assets/images/hitech_monitor.png',
    'assets/images/Keyboard.png',
    'assets/images/Msi_monitor.png',
  ];

  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return CarouselSlider.builder(
      itemCount: imagesPath.length,
      carouselController: _controller,
      options: CarouselOptions(
        height: 200,
        viewportFraction: 1.0,
        autoPlay: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      itemBuilder: (context, index, realIndex) {
        return Stack(
          children: [
            // Image
            SizedBox(
              width: screenWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagesPath[index],
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
            // Dot indicator inside image
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesPath.asMap().entries.map((entry) {
                  return Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.white
                          // ignore: deprecated_member_use
                          : Colors.white.withOpacity(0.4),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
