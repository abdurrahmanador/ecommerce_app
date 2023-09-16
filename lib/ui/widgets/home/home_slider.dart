
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/utility/app_color.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[CarouselSlider(
          options: CarouselOptions(
              height: 180,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page, _) {
                _selectedSlider.value = page;
              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Center(
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        )));
              },
            );
          }).toList(),
        ),
          SizedBox(height: 16.0),
          ValueListenableBuilder(
            valueListenable: _selectedSlider,
            builder: (context, value, _) {
              List<Widget> list = [];
              for (int i = 0; i < 5; i++) {
                list.add(Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: value == i ? AppColor.primaryColor : null),
                ));
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              );
            },
          ),]
    );
  }
}
