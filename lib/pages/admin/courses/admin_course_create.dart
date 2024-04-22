import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:flutter/material.dart';

class AdminCreateCourse extends StatefulWidget {
  const AdminCreateCourse({Key? key}) : super(key: key);

  @override
  State<AdminCreateCourse> createState() => _AdminCreateCourseState();
}

class _AdminCreateCourseState extends State<AdminCreateCourse> {
  final formKey = GlobalKey<FormState>();
  String dropdownValueLecturer = "nhn";
  String dropdownValueManager = "manager1";
  String dropdownValueEducation = "education1";
  String dropdownValueOpenSchedule = "openschedule1";
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
                    'Create Course Page',
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
                              SizedBox(height: 32),
                              //Lecturer
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lecturer name',
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
                                          value: 'nhn',
                                          child: Text('Nguyễn Hoài Nam'),
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
                                          dropdownValueLecturer = newValue!;
                                        });
                                      },
                                      value: dropdownValueLecturer,
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
                              SizedBox(height: 3),
                              //Manager
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Manager name',
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
                                          value: 'manager1',
                                          child: Text('Manager 1'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'manager2',
                                          child: Text('Manager 2'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'manager3',
                                          child: Text('Manager 3'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueManager = newValue!;
                                        });
                                      },
                                      value: dropdownValueManager,
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
                              SizedBox(
                                height: 7,
                              ),
                              //Education program
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Education name',
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
                                          value: 'education1',
                                          child: Text('Education program 1'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'education2',
                                          child: Text('Education program 2'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'education3',
                                          child: Text('Education program 3'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueEducation = newValue!;
                                        });
                                      },
                                      value: dropdownValueEducation,
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
                              SizedBox(
                                height: 10,
                              ),
                              //Open schedule
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Opening schedule ID',
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
                                          value: 'openschedule1',
                                          child: Text('Start Schedule 1'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'openschedule2',
                                          child: Text('Start Schedule 2'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'openschedule3',
                                          child: Text('Start Schedule 3'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueOpenSchedule = newValue!;
                                        });
                                      },
                                      value: dropdownValueOpenSchedule,
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
                              SizedBox(height: 31),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Course name",
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
                                  labelText: "Price",
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
                                  labelText: "Document's link",
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
                              SizedBox(height: 30),
                              TextFormField(
                                minLines: 1,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Course objectives",
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
