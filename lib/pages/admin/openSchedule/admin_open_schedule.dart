import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:fintech_dashboard_clone/pages/admin/openSchedule/admin_table_row_open_schedule.dart';
import 'package:fintech_dashboard_clone/pages/admin/testMarks/admin_table_row_testMark.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:flutter/material.dart';

class AdminOpenSchedule extends StatefulWidget {
  const AdminOpenSchedule({Key? key}) : super(key: key);

  @override
  State<AdminOpenSchedule> createState() => _AdminOpenScheduleState();
}

class _AdminOpenScheduleState extends State<AdminOpenSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Opening Scheduel Page",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/create-open-schedule');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue), // Màu nền của nút
                                      foregroundColor: MaterialStateProperty
                                          .all<Color>(Colors
                                              .white), // Màu văn bản trên nút
                                    ),
                                    child: Text('Create new',
                                        style: TextStyle(fontSize: 16)))
                              ]),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                //Table
                Responsive.isDesktop(context)
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: DataTableAdminOpenSchedule())
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        child: DataTableAdminOpenSchedule())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
