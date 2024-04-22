import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/admin_table_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAdmin extends StatefulWidget {
  const UserAdmin({Key? key}) : super(key: key);

  @override
  State<UserAdmin> createState() => _UserAdminState();
}

class _UserAdminState extends State<UserAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(186, 230, 246, 1.0),
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
                                  'User Page',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/create-user');
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
                        width: MediaQuery.of(context).size.width,
                        child: DataTableAdmin())
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        child: DataTableAdmin())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
