import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/Navbar.dart';
import 'package:fintech_dashboard_clone/widgets/footer.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  TextEditingController _controller = TextEditingController();
  String selectedOption = 'Option 1';
  bool checkedValueHCM = false;
  bool checkedValueHN = false;
  bool checkedValueDN = false;

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
                                        'Courses',
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
                                        'Courses',
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
            //content
            Container(
              // color: Colors.yellow,
              // constraints: BoxConstraints(minHeight: 600.0),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.grey, // Màu của viền
              //     width: 1.0, // Độ dày của viền
              //   ),
              // ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: [
                  //search
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                  10.0), // Bo tròn góc viền
                            ),
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder
                                    .none, // Loại bỏ viền của TextField mặc định
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                        10.0), // Khoảng cách nội dung và viền
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50.0,
                          width: 50, // Chiều cao mong muốn
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            // border: Border.all(
                            //   color: Colors.grey, // Màu của viền
                            //   width: 1.0, // Độ dày của viền
                            // ),
                            borderRadius: BorderRadius.circular(
                                10.0), // Bo tròn viền (tuỳ chọn)
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.search),
                            color: Colors.white,
                            onPressed: () {
                              // Thực hiện hành động khi nút tìm kiếm được nhấn
                              print('Search button pressed');
                              // Điều gì đó khác, ví dụ: tìm kiếm trong cơ sở dữ liệu
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  //course
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //left
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('BỘ LỌC TÌM KIẾM',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Địa điểm',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CheckboxListTile(
                                      title: Text("Hồ Chí Minh"),
                                      value: checkedValueHCM,
                                      onChanged: (newValue) {
                                        setState(() {
                                          checkedValueHCM = newValue!;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity
                                          .leading, //  <-- leading Checkbox
                                    ),
                                    CheckboxListTile(
                                      title: Text("Hà Nội"),
                                      value: checkedValueHN,
                                      onChanged: (newValue) {
                                        setState(() {
                                          checkedValueHN = newValue!;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity
                                          .leading, //  <-- leading Checkbox
                                    ),
                                    CheckboxListTile(
                                      title: Text("Đà Nẵng"),
                                      value: checkedValueDN,
                                      onChanged: (newValue) {
                                        setState(() {
                                          checkedValueDN = newValue!;
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity
                                          .leading, //  <-- leading Checkbox
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      //right
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Column(
                              children: [
                                // row 1
                                Row(
                                  children: [
                                    //course 1
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 2
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 3
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //row 2
                                Row(
                                  children: [
                                    //course 1
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 2
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 3
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //row 3
                                Row(
                                  children: [
                                    //course 1
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 2
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    //course 3
                                    Container(
                                      width: 300,
                                      height: 420,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/banner3.png'),
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
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "15.000.000đ",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    color: Colors.blue,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Nguyễn Hoài Nam",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  const Row(
                                                    children: [
                                                      Row(children: [
                                                        Icon(
                                                          Icons
                                                              .sticky_note_2_outlined,
                                                          color: Colors.blue,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          'Khai giảng:',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
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
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ]),
                                                      Spacer(),
                                                      Text('Hồ Chí Minh')
                                                    ],
                                                  ),
                                                  const SizedBox(height: 10),
                                                  MaterialButton(
                                                    color: Colors.blue,
                                                    height: 40,
                                                    minWidth: 100,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Đặt bán kính bo góc tại đây
                                                      side: const BorderSide(
                                                          color: Colors
                                                              .blue), // Nếu bạn muốn có viền
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/course-detail');
                                                    },
                                                    child: const Text(
                                                        'Find out more',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
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
