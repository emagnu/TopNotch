//
// Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// Import FILES

//

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  // Controller
  CarouselController controller = CarouselController();
  // Image list
  var imageList = [
    'mingchow01.jpg',
    'mingchow02.jpg',
    'mingchow03.jpg',
    'mingchow04.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: CarouselSlider(
        carouselController: controller,
        items: imageList
            .map(
              (e) => Stack(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Image.asset(
                      e,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 250,
                    right: 60,
                    child: IconButton(
                      onPressed: () {
                        controller.nextPage();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 60,
                    child: IconButton(
                      onPressed: () {
                        controller.nextPage();
                        controller.previousPage();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
            .toList(),
        options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
      ),
    );
  }
}
