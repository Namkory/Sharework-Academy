import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:flutter/material.dart';

class AdminCreateOpenSchedule extends StatefulWidget {
  const AdminCreateOpenSchedule({Key? key}) : super(key: key);

  @override
  State<AdminCreateOpenSchedule> createState() =>
      _AdminCreateOpenScheduleState();
}

class _AdminCreateOpenScheduleState extends State<AdminCreateOpenSchedule> {
  final formKey = GlobalKey<FormState>();
  String dropdownValueClass = "19dth1a";
  String dropdownValueCourse = "java";
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
                    'Create Opening Schedule Page',
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Class name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    child: DropdownButton(
                                      hint: Text('Select item:'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                          value: '19dth1a',
                                          child: Text('19DTH1A'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: '19dth1b',
                                          child: Text('19DTH1B'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: '19dth1c',
                                          child: Text('19DTH1C'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueClass = newValue!;
                                        });
                                      },
                                      value: dropdownValueClass,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      icon: Icon(Icons.arrow_drop_down),
                                      underline: Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 80),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Course name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    child: DropdownButton(
                                      hint: Text('Select item:'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                          value: 'java',
                                          child: Text('Java fullstack A to Z'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Two',
                                          child: Text('Trần Thị Anh Thi'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Three',
                                          child: Text('Tào Ngọc Bảo Trân'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueCourse = newValue!;
                                        });
                                      },
                                      value: dropdownValueCourse,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      icon: Icon(Icons.arrow_drop_down),
                                      underline: Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
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
                                  labelText: "Start day",
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
                                  labelText: "End day",
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
                                  labelText: "Area",
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
