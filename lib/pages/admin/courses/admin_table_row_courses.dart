import 'package:flutter/material.dart';

class DataTableAdminCourses extends StatefulWidget {
  const DataTableAdminCourses({Key? key}) : super(key: key);

  @override
  State<DataTableAdminCourses> createState() => _DataTableAdminCoursesState();
}

class _DataTableAdminCoursesState extends State<DataTableAdminCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PaginatedDataTable(
          columns: const [
            DataColumn(
                label: Text(
              '#ID',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Course code',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Course name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Lecturer name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Education program ID',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Manager name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Opening schedule ID',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Course objectives',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Price',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Action',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ],
          source: DataSource(),
          rowsPerPage: 8,
        ),
      ),
    );
  }
}

class Data {
  final num id;
  final String courseCode;
  final String courseName;
  final String lecturerName;
  final num educationProgramID;
  final String managerName;
  final num openscheduleID;
  final String courseObjectives;
  final String price;

  Data({
    required this.id,
    required this.courseCode,
    required this.courseName,
    required this.lecturerName,
    required this.educationProgramID,
    required this.managerName,
    required this.openscheduleID,
    required this.courseObjectives,
    required this.price,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 1,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 2,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 3,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 4,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 5,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 6,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 7,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 8,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 9,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 10,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 11,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 12,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 13,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 14,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 15,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),
    Data(
      id: 16,
      courseCode: 'java19DTH',
      courseName: 'java fullstack A to Z',
      lecturerName: 'Nguyễn Hoài Nam',
      educationProgramID: 5,
      managerName: 'Trần Minh Khánh',
      openscheduleID: 2,
      courseObjectives: 'Become fullstack developer',
      price: '15.000.000đ',
    ),

    // Add more tasks here...
  ];

  @override
  DataRow? getRow(int index) {
    if (index >= _data.length) {
      return null;
    }
    final data = _data[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(data.id.toString())),
        DataCell(Text(data.courseCode)),
        DataCell(Text(data.courseName)),
        DataCell(Text(data.lecturerName)),
        DataCell(Text(data.educationProgramID.toString())),
        DataCell(Text(data.managerName)),
        DataCell(Text(data.openscheduleID.toString())),
        DataCell(Text(data.courseObjectives)),
        DataCell(Text(data.price)),

        //customize Row action: edit and delete
        DataCell(Row(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue), // Màu nền của nút
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white), // Màu văn bản trên nút
              ),
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.red), // Màu nền của nút
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white), // Màu văn bản trên nút
              ),
              child: Text(
                'Delete',
                style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
              ),
            ),
          ],
        ))
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
