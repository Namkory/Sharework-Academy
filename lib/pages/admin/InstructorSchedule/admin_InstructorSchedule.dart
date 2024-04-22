import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:fintech_dashboard_clone/pages/admin/InstructorSchedule/admin_table_row_instructor_schedule.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:flutter/material.dart';

class LecturerInstructorSchedule extends StatefulWidget {
  const LecturerInstructorSchedule({Key? key}) : super(key: key);

  @override
  State<LecturerInstructorSchedule> createState() =>
      _LecturerInstructorScheduleState();
}

class _LecturerInstructorScheduleState
    extends State<LecturerInstructorSchedule> {
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
                                  "Instructor's Schedule Page",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/create-lecturer-schedule');
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
                        width: 800,
                        child: DataTableAdminInstructorSchedule())
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        child: DataTableAdminInstructorSchedule())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
