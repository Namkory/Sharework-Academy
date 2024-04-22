import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:flutter/material.dart';

class Banner3 extends StatelessWidget {
  const Banner3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // padding: EdgeInsets.only(right: 300),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/about2.png.webp'),
                    fit: BoxFit.contain,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Take the next step toward your personal \nand professional goals with us.",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                          'The automated process all your website tasks.\nDiscover tools and techniques to engage \neffectively with vulnerable children and young \npeople.'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        color: Colors.blue, // Màu nền của nút
                        minWidth: 100, // Chiều rộng tối thiểu của nút
                        height: 30, // Chiều cao của nút
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          child: Text('Get Courses',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // padding: EdgeInsets.only(right: 300),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/about2.png.webp'),
                    fit: BoxFit.contain,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Take the next step toward your personal \nand professional goals with us.",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                          'The automated process all your website tasks.\nDiscover tools and techniques to engage \neffectively with vulnerable children and young \npeople.'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        color: Colors.blue, // Màu nền của nút
                        minWidth: 100, // Chiều rộng tối thiểu của nút
                        height: 30, // Chiều cao của nút
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          child: Text('Get Courses',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
