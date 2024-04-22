import 'package:fintech_dashboard_clone/data/mock_data.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/styles/styles.dart';
import 'package:fintech_dashboard_clone/widgets/bar_chart_with_title.dart';
import 'package:fintech_dashboard_clone/widgets/currency_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseIncomeCharts extends StatelessWidget {
  const ExpenseIncomeCharts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BarChartWithTitle2(
              title: "Total Students",
              amount: 70000,
              barColor: Styles.defaultRedColor,
              url: 'assets/icon-dashboard1.png'),
        ),
        Responsive.isDesktop(context)
            ? const SizedBox(
                width: 40,
              )
            : const SizedBox(
                width: 10,
              ),
        Flexible(
          child: BarChartWithTitle2(
              title: "Total Teachers",
              amount: 1200,
              barColor: Styles.defaultRedColor,
              url: 'assets/icon-dashboard2.png'),
          // child: Container(
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.all(Radius.circular(18.0)),
          //       color: Colors.white,
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.only(
          //           left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             children: [
          //               Image.asset("assets/barchariconn.png",
          //                   height: MediaQuery.of(context).size.height * 0.1),
          //               Spacer(),
          //               Icon(Icons.more_vert, color: Colors.black),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 30,
          //           ),
          //           Text(
          //             "70.000",
          //             style:
          //                 TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //           ),
          //           SizedBox(
          //             height: 20,
          //           ),
          //           Text(
          //             "Total Students",
          //             style:
          //                 TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //           ),
          //         ],
          //       ),
          //     )),
        ),
        Responsive.isDesktop(context)
            ? const SizedBox(
                width: 40,
              )
            : const SizedBox(
                width: 10,
              ),
        Flexible(
          child: BarChartWithTitle2(
              title: "Total Courses",
              amount: 50,
              barColor: Styles.defaultRedColor,
              url: 'assets/icon-dashboard3.png'),
        )
      ],
    );
  }
}

class BarChartWithTitle2 extends StatelessWidget {
  final String title;
  final String url;
  final Color barColor;
  final double amount;

  const BarChartWithTitle2({
    Key? key,
    required this.title,
    required this.url,
    required this.amount,
    required this.barColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: Styles.defaultBorderRadius,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("$url", height: 70),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        '$amount đ',
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          color: Styles.defaultGreyColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("$url", height: 50),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$amount đ',
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          title,
                          style: TextStyle(
                            color: Styles.defaultGreyColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
