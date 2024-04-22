import 'package:fintech_dashboard_clone/data/RecentFile.dart';
import 'package:fintech_dashboard_clone/data/RecentFile.dart';
import 'package:fintech_dashboard_clone/data/mock_data.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/currency_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  RecentFiles({
    Key? key,
  }) : super(key: key);
  Color myColor = Color(int.parse('0xFFe0efff'));
  @override
  Widget build(BuildContext context) {
    List demoRecentFiless = [
      RecentFile(
          id: '1',
          courseName: "Java fullstack A to Z",
          lecturerName: "Nguyễn Hoài Nam",
          startSchedule: "11/04/2024",
          studySchedule: "7h - 11h t2, t4, t6",
          area: "HCM",
          operation: "Detail"),
      RecentFile(
          id: '2',
          courseName: "Ruby fullstack A to Z",
          lecturerName: "Nguyễn Hoài Lâm",
          startSchedule: "11/04/2024",
          studySchedule: "7h - 11h t2, t4, t6",
          area: "HCM",
          operation: "Detail"),
      RecentFile(
          id: '3',
          courseName: "HTML fullstack A to Z",
          lecturerName: "Nguyễn Hoài Linh",
          startSchedule: "11/04/2024",
          studySchedule: "7h - 11h t2, t4, t6",
          area: "HCM",
          operation: "Detail"),
      RecentFile(
          id: '4',
          courseName: "CSS fullstack A to Z",
          lecturerName: "Nguyễn Hoài Bão",
          startSchedule: "11/04/2024",
          studySchedule: "7h - 11h t2, t4, t6",
          area: "HCM",
          operation: "Detail"),
    ];

    return Container(
      padding: EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "List courses",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Responsive.isDesktop(context)
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 182,
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('Course Name')),
                        DataColumn(label: Text('Lecturer Name')),
                        DataColumn(label: Text('Start Schedule')),
                        DataColumn(label: Text('Study Schedule')),
                        DataColumn(label: Text('Area')),
                        DataColumn(label: Text('Option')),
                      ],
                      rows: List.generate(
                        demoRecentFiless.length,
                        (
                          index,
                        ) =>
                            DataRow(
                          cells: [
                            DataCell(Text(demoRecentFiless[index].id)),
                            DataCell(Text(demoRecentFiless[index].courseName)),
                            DataCell(
                                Text(demoRecentFiless[index].lecturerName)),
                            DataCell(
                                Text(demoRecentFiless[index].startSchedule)),
                            DataCell(
                                Text(demoRecentFiless[index].studySchedule)),
                            DataCell(Text(demoRecentFiless[index].area)),
                            DataCell(Text(
                              demoRecentFiless[index].operation,
                              style: TextStyle(color: Colors.blue),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 145,
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text('ID', style: TextStyle(fontSize: 12))),
                        DataColumn(
                            label: Text('Course Name',
                                style: TextStyle(fontSize: 12))),
                        DataColumn(
                            label: Text(
                          'Lecturer Name',
                          style: TextStyle(fontSize: 12),
                        )),
                        DataColumn(
                            label:
                                Text('Option', style: TextStyle(fontSize: 12))),
                      ],
                      rows: List.generate(
                        demoRecentFiless.length,
                        (
                          index,
                        ) =>
                            DataRow(
                          cells: [
                            DataCell(Text(demoRecentFiless[index].id)),
                            DataCell(Text(demoRecentFiless[index].courseName)),
                            DataCell(
                                Text(demoRecentFiless[index].lecturerName)),
                            DataCell(Text(
                              demoRecentFiless[index].operation,
                              style: TextStyle(color: Colors.blue),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
