import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:flutter/material.dart';

class AdminCreateClass extends StatefulWidget {
  const AdminCreateClass({Key? key}) : super(key: key);

  @override
  State<AdminCreateClass> createState() => _AdminCreateClassState();
}

class _AdminCreateClassState extends State<AdminCreateClass> {
  final formKey = GlobalKey<FormState>();
  String dropdownValueClass = "19dth1a";
  String dropdownValueLecturer = "nhn";
  String dropdownValueStudent = "namkory";
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
                    'Create Class Page',
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
                              SizedBox(height: 23),
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
                              SizedBox(height: 6),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Student name',
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
                                          value: 'namkory',
                                          child: Text('Nam kory'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'namkory2',
                                          child: Text('Nam kory 2'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'namkory3',
                                          child: Text('Nam kory 3'),
                                        )
                                      ],
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValueStudent = newValue!;
                                        });
                                      },
                                      value: dropdownValueStudent,
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
                                  labelText: "Schedule",
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
                                  labelText: "Slot",
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
