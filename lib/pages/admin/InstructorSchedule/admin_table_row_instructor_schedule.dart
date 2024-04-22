import 'package:flutter/material.dart';

class DataTableAdminInstructorSchedule extends StatefulWidget {
  const DataTableAdminInstructorSchedule({Key? key}) : super(key: key);

  @override
  State<DataTableAdminInstructorSchedule> createState() =>
      _DataTableAdminInstructorScheduleState();
}

class _DataTableAdminInstructorScheduleState
    extends State<DataTableAdminInstructorSchedule> {
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
              'Lecturer name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Class name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Time',
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
  final String lecturerName;
  final String className;
  final String date;
  final String time;

  Data({
    required this.id,
    required this.lecturerName,
    required this.className,
    required this.date,
    required this.time,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 2,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 3,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 4,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 5,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 6,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 7,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 8,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 9,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 10,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 11,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 12,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 13,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 14,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 15,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
    ),
    Data(
      id: 16,
      lecturerName: 'Nguyễn Hoài Nam',
      className: '19DTH.1A',
      date: '14/04/2024',
      time: '7h - 11h',
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
        DataCell(Text(data.lecturerName)),
        DataCell(Text(data.className)),
        DataCell(Text(data.date)),
        DataCell(Text(data.time)),
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
