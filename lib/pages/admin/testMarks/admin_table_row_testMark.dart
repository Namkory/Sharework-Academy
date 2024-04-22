import 'package:flutter/material.dart';

class DataTableAdminTestMarks extends StatefulWidget {
  const DataTableAdminTestMarks({Key? key}) : super(key: key);

  @override
  State<DataTableAdminTestMarks> createState() =>
      _DataTableAdminTestMarksState();
}

class _DataTableAdminTestMarksState extends State<DataTableAdminTestMarks> {
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
              'Student name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Course name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Test name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Attendance score',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Mid-term score',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Final score',
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
  final String studentName;
  final String courseName;
  final String testName;
  final num attendanceScore;
  final num midTermScore;
  final num finalScore;

  Data({
    required this.id,
    required this.studentName,
    required this.courseName,
    required this.testName,
    required this.attendanceScore,
    required this.midTermScore,
    required this.finalScore,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 2,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 3,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 4,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 5,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 6,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 7,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 8,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 9,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 10,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 11,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 12,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 13,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 14,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 15,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
    ),
    Data(
      id: 16,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      testName: 'Cú pháp java và kiến thức cơ bản',
      attendanceScore: 8.0,
      midTermScore: 7.0,
      finalScore: 9.0,
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
        DataCell(Text(data.studentName)),
        DataCell(Text(data.courseName)),
        DataCell(Text(data.testName)),
        DataCell(Text(data.attendanceScore.toString())),
        DataCell(Text(data.midTermScore.toString())),
        DataCell(Text(data.finalScore.toString())),

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
