import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderCourses extends StatefulWidget {
  const SliderCourses({Key? key}) : super(key: key);

  @override
  State<SliderCourses> createState() => _SliderCoursesState();
}

class _SliderCoursesState extends State<SliderCourses> {
  final List<num> listItem = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          const Text(
            "Our Courses",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 460,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: CarouselSlider(
                    items: listItem
                        .map((e) => Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/banner3.png'),
                                        fit: BoxFit.contain,
                                      ),
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 20,
                                        right: 20,
                                        bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Java Web Developer A to Z",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "15.000.000đ",
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                        Container(
                                          height: 1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Colors.blue,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Nguyễn Hoài Nam",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 10),
                                        const Row(
                                          children: [
                                            Row(children: [
                                              Icon(
                                                Icons.sticky_note_2_outlined,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Khai giảng:',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ]),
                                            Spacer(),
                                            Text('02/04/2024')
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Row(
                                          children: [
                                            Row(children: [
                                              Icon(
                                                Icons.favorite,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Lịch học:',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ]),
                                            Spacer(),
                                            Text(
                                                '18:00 - 21:00 thứ 3,5 & \n8:30 - 11:30 thứ 7')
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Row(
                                          children: [
                                            Row(children: [
                                              Icon(
                                                Icons.pin_drop,
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Địa điểm:',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ]),
                                            Spacer(),
                                            Text('Hồ Chí Minh')
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        MaterialButton(
                                          color: Colors.blue,
                                          height: 30,
                                          minWidth: 100,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                15), // Đặt bán kính bo góc tại đây
                                            side: const BorderSide(
                                                color: Colors
                                                    .blue), // Nếu bạn muốn có viền
                                          ),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/course-detail');
                                          },
                                          child: const Text('Find out more',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 0.3,
                      aspectRatio: 3.0,
                      scrollPhysics: const PageScrollPhysics(),
                      // enlargeCenterPage: true,
                    )),
              ))
        ],
      ),
    );
  }
}
