import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/Navbar.dart';
import 'package:fintech_dashboard_clone/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(104, 116, 255, 1.0),
                    Color.fromRGBO(186, 230, 246, 1.0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Navbar(),
                  Responsive.isDesktop(context)
                      ?
                      //Header content Desktop
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90, left: 250),
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Course Detail',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Home | Service',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      :
                      //Header content Mobile
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 170),
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Open Schedule',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Home | Service',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
            Responsive.isDesktop(context)
                ? SizedBox(
                    height: 100,
                  )
                : SizedBox(height: 50),
            //Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tên Khóa học',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            // color: Colors.green,
                            constraints: BoxConstraints(minHeight: 300),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Mục tiêu khóa học',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                                '- Nắm chắc cách tư duy chuẩn cũng như các kĩ thuật phân tích trong Data analytics'),
                                            Text(
                                                '- Thành thạo sử dụng Power BI và Excel, các tools cần thiết để khai thác và trực quan hóa dữ liệu'),
                                            Text(
                                                '- Tạo report, dashboard cho các job requirements trong công việc'),
                                            Text(
                                                '- Nắm được kiến thức cơ bản về SQL'),
                                            Text(
                                                '- Biết cách khai thác data để xử lý bài toán thực tế trong doanh nghiệp'),
                                          ])),
                                  Container(
                                    height: 1,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lộ trình khóa học',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('Bài 1',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('1.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('1.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 2',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('2.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('2.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 3',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('3.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('3.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 4',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('4.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('4.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 5',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('5.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('5.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 6',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('6.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('6.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Bài 7',
                                              style: TextStyle(fontSize: 16)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('7.1 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          Text('7.2 Tên bài học',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        //right
                        Expanded(
                          flex: 1,
                          child: Container(
                              constraints: BoxConstraints(minHeight: 300),
                              // color: Colors.yellow,
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/banner3.png'),
                                        fit: BoxFit.contain,
                                      ),
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, right: 20, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                              'Thời lượng:',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ]),
                                          Spacer(),
                                          Text('32 giờ')
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Row(
                                        children: [
                                          Row(children: [
                                            Icon(
                                              Icons.person,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Số lượng học viên:',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ]),
                                          Spacer(),
                                          Text('12')
                                        ],
                                      ),
                                      const SizedBox(height: 20),
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
                                          Text('Hồ Chí Minh'),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      MaterialButton(
                                        color: Colors.blue,
                                        height: 40,
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
                                              context, '/open-schedule');
                                        },
                                        child: const Text('Lịch khai giảng',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                )
                              ])),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Footer
            Responsive.isDesktop(context)
                ? SizedBox(
                    height: 100,
                  )
                : SizedBox(height: 50),
            Footer()
          ],
        ),
      ),
    );
  }
}
