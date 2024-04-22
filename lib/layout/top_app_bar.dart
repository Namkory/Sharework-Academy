import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController controller = Get.put(MyController());
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Điều hướng về trang chủ ở đây
              Navigator.pushReplacementNamed(context, '/admin');
              controller.updateVariable(20);
            },
            child: Visibility(
                visible: Responsive.isDesktop(context),
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0, right: 20),
                  child: Column(children: [
                    Image.asset("assets/logo.png", height: 40),
                  ]),
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Search something...",
                  icon: Icon(CupertinoIcons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: _nameAndProfilePicture(
              context,
              "Nam kory",
              "https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg",
            ),
          ),
        ],
      ),
    );
  }

  Widget _nameAndProfilePicture(
      BuildContext context, String username, String imageUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 6.0),
          child: Icon(
            CupertinoIcons.chevron_down,
            size: 14,
          ),
        ),
        Visibility(
          visible: !Responsive.isMobile(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }
}
