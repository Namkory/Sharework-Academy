import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 1.0,
              color: Colors.grey,
            ),
            Responsive.isDesktop(context)
                ?
                //Footer desktop
                Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sharework Academy',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Chúng tôi nhận thấy cách mạng công nghiệp 4.0 và 5.0 không chỉ là sự phát triển về công nghệ mà còn là cuộc cách mạng về tri thức, nơi mọi người hòa mình vào cộng đồng kiến thức và cùng xây dựng tương lai phát triển toàn diện',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(child: Icon(Icons.facebook)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(child: Icon(Icons.discord)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(child: Icon(Icons.tiktok)),
                                  ])
                            ],
                          ),
                        ),
                      )),
                      Container(
                        width: 1.0,
                        height: 250,
                        color: Colors.grey,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Về chúng tôi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_city),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          '364, Đ.Cộng Hòa, P.15, Q.Tân Bình, TP.HCM')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.phone),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('0909361852')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.mail),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('nguyenhoainam211102@gmail.com')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.discord),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Discord.........')
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                      Container(
                        width: 1.0,
                        height: 250,
                        color: Colors.grey,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Đăng ký nhận tin',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Nhập thông tin',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      width:
                                          10), // Khoảng cách giữa input và button
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.blue,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        // Xử lý sự kiện khi nút được nhấn
                                      },
                                      child: const Text(
                                        'Đăng ký',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  )
                :
                //Footer mobile
                Column(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 10),
                        child: Container(
                          // padding: const EdgeInsets.all(20),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sharework Academy',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Chúng tôi nhận thấy cách mạng công nghiệp 4.0 và 5.0 không chỉ là sự phát triển về công nghệ mà còn là cuộc cách mạng về tri thức, nơi mọi người hòa mình vào cộng đồng kiến thức và cùng xây dựng tương lai phát triển toàn diện',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(child: Icon(Icons.facebook)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(child: Icon(Icons.discord)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(child: Icon(Icons.tiktok)),
                                  ])
                            ],
                          ),
                        ),
                      )),
                      Container(
                        width: 350,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: Container(
                              // padding: EdgeInsets.all(20),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Về chúng tôi',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_city),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              '364, Đ.Cộng Hòa, P.15, Q.Tân Bình, TP.HCM')
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.phone),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('0909361852')
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.mail),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('nguyenhoainam211102@gmail.com')
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.discord),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Discord.........')
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                      Container(
                        width: 350,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 10),
                        child: Container(
                          // padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Đăng ký nhận tin',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Nhập thông tin',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      width:
                                          10), // Khoảng cách giữa input và button
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.blue,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        // Xử lý sự kiện khi nút được nhấn
                                      },
                                      child: const Text(
                                        'Đăng ký',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
