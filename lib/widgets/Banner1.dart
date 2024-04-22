import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color myColor = Color(0xFF4255A4);
    return Container(
      // height: 138,
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 118,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Điều chỉnh vị trí của bóng đổ
                ),
              ],
              borderRadius: BorderRadius.circular(30), // Bo góc với bán kính 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon1.svg',
                  height: 50, // Đặt kích thước cho hình ảnh SVG
                  width: 50,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('60 + UX Course',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: myColor)),
                    SizedBox(height: 10),
                    Text('The automated process \nall your website tasks.',
                        style: TextStyle(fontSize: 14, color: myColor))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 50),
          Container(
            height: 118,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Điều chỉnh vị trí của bóng đổ
                ),
              ],
              borderRadius: BorderRadius.circular(30), // Bo góc với bán kính 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon2.svg',
                  height: 55, // Đặt kích thước cho hình ảnh SVG
                  width: 55,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Expert instructors',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: myColor)),
                    SizedBox(height: 10),
                    Text('The automated process \nall your website tasks.',
                        style: TextStyle(fontSize: 14, color: myColor))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 50),
          Container(
            height: 118,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Điều chỉnh vị trí của bóng đổ
                ),
              ],
              borderRadius: BorderRadius.circular(30), // Bo góc với bán kính 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon3.svg',
                  height: 50, // Đặt kích thước cho hình ảnh SVG
                  width: 50,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Life time access',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: myColor)),
                    SizedBox(height: 10),
                    Text('The automated process \nall your website tasks.',
                        style: TextStyle(fontSize: 14, color: myColor))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
