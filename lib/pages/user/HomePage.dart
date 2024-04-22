import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/Banner1.dart';
import 'package:fintech_dashboard_clone/widgets/Banner2.dart';
import 'package:fintech_dashboard_clone/widgets/Banner3.dart';
import 'package:fintech_dashboard_clone/widgets/Navbar.dart';
import 'package:fintech_dashboard_clone/widgets/footer.dart';
import 'package:fintech_dashboard_clone/widgets/landingPage.dart';
import 'package:fintech_dashboard_clone/widgets/sliderCourses.dart';
import 'package:fintech_dashboard_clone/widgets/sliderLecturer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.9,
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
                    child: const Column(
                      children: [
                        Navbar(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 4.0),
                          child: LandingPage(),
                        ),
                        // SizedBox(
                        //   height: 50,
                        // ),
                      ],
                    ),
                  ),
                  Responsive.isDesktop(context)
                      ? const Align(
                          alignment: Alignment.bottomCenter, child: Banner1())
                      : const Text(''),
                ],
              ),
            ),
            const SizedBox(height: 100),
            SliderCourses(),
            SizedBox(
              height: 100,
            ),
            Banner2(),
            SizedBox(height: 100),
            SliderLecturer(),
            SizedBox(
              height: 100,
            ),
            Banner3(),
            SizedBox(
              height: 100,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
