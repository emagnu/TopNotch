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
  // Image counter
  int currentImg = 0;
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
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width, // * 0.45,
                      height: 50.0, color: const Color(0xFF27AE60),
                      child: Center(
                        child: SizedBox(
                          width: 300.0,
                          height: 5.0,
                          child: ListView.builder(
                            itemCount: imageList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  controller.jumpToPage(index);
                                },
                                child: Container(
                                  width: 30.0,
                                  height: 5.0,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: currentImg == index
                                        ? Colors.white
                                        : Colors.white.withOpacity(0.5),
                                  ),
                                  // child: Widget(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.0,
          onPageChanged: (index, reason) {
            setState(() {
              currentImg = index;
            });
          },
        ),
      ),
    );
  }
}
