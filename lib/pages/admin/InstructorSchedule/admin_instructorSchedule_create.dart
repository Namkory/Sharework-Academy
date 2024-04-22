import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:flutter/material.dart';

class AdminCreateInstructorSchedule extends StatefulWidget {
  const AdminCreateInstructorSchedule({Key? key}) : super(key: key);

  @override
  State<AdminCreateInstructorSchedule> createState() =>
      _AdminCreateInstructorScheduleState();
}

class _AdminCreateInstructorScheduleState
    extends State<AdminCreateInstructorSchedule> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Instructor Schedule Page',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            //left
                            Expanded(
                                child: Column(children: [
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Lecturer name*",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]+$')
                                          .hasMatch(value!)) {
                                    return 'Enter correct name';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Class name*",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]+$')
                                          .hasMatch(value!)) {
                                    return 'Enter correct name';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ])),
                            SizedBox(
                              width: 30,
                            ),
                            //right
                            Expanded(
                                child: Column(children: [
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Date",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]+$')
                                          .hasMatch(value!)) {
                                    return 'Enter correct email';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Time",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]+$')
                                          .hasMatch(value!)) {
                                    return 'Enter correct email';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ])),
                          ]),
                          SizedBox(height: 40),
                          // Button submit form
                          TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  // ignore: non_constant_identifier_names
                                  final snackBar = SnackBar(
                                    content: Text('Submitting form'),
                                  );
                                  // _scaffoldKey.currentState!.showSnackBar(snackBar);
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue), // Màu nền của nút
                                minimumSize: MaterialStateProperty.all<Size>(Size(
                                    150,
                                    50)), // Độ cao và độ rộng tối thiểu của nút
                                padding: MaterialStateProperty
                                    .all<EdgeInsetsGeometry>(EdgeInsets.all(
                                        16)), // Khoảng cách giữa văn bản và ranh giới của nút
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Độ cong của góc nút
                                  ),
                                ),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ))
                        ],
                      ))
                  //form
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
