import 'package:flutter/material.dart';

class DataTableAdminCertificate extends StatefulWidget {
  const DataTableAdminCertificate({Key? key}) : super(key: key);

  @override
  State<DataTableAdminCertificate> createState() =>
      _DataTableAdminCertificateState();
}

class _DataTableAdminCertificateState extends State<DataTableAdminCertificate> {
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
              'Date of issue',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Study time',
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
  final String dateOfIssue;
  final String studyTime;

  Data({
    required this.id,
    required this.studentName,
    required this.courseName,
    required this.dateOfIssue,
    required this.studyTime,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      studentName: 'Nguyễn Hoài Nam',
      courseName: 'java fullstack A to Z',
      dateOfIssue: '15/04/2024',
      studyTime: '30h',
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
        DataCell(Text(data.dateOfIssue)),
        DataCell(Text(data.studyTime)),
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
