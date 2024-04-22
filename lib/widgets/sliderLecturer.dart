import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderLecturer extends StatefulWidget {
  const SliderLecturer({Key? key}) : super(key: key);

  @override
  State<SliderLecturer> createState() => _SliderLecturerState();
}

class _SliderLecturerState extends State<SliderLecturer> {
  final List<num> listItem = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          const Text(
            "Team Of Experts",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 370,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: CarouselSlider(
                    items: listItem
                        .map((e) => Container(
                              padding: EdgeInsets.only(top: 30),
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
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          50.0), // Bo tròn góc của Container
                                      image: DecorationImage(
                                        image: AssetImage('assets/banner3.png'),
                                        fit: BoxFit
                                            .cover, // Để ảnh bên trong bo tròn
                                      ),
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
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
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Nguyễn Hoài Nam",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          "Giảng viện Java & .Net",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 1,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(height: 30),
                                        Text(
                                          'Là một người có kinh nghiệm dày dặn trong việc giảng dạy.Tính đến thời điểm hiện tại, là người có kinh nghiệm giảng dạy rất cao kinh nghiệm giảng dạy.',
                                          textAlign: TextAlign.justify,
                                        )
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
