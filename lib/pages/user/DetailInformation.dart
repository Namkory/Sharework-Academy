import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/Navbar.dart';
import 'package:fintech_dashboard_clone/widgets/footer.dart';
import 'package:flutter/material.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({Key? key}) : super(key: key);

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(104, 116, 255, 1.0),
                    Color.fromRGBO(186, 230, 246, 1.0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Navbar(),
                  Responsive.isDesktop(context)
                      ?
                      //Header content Desktop
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90, left: 250),
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'My account',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Home | Service',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      :
                      //Header content Mobile
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 200),
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'My account',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Home | Service',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
            Responsive.isDesktop(context)
                ? SizedBox(
                    height: 100,
                  )
                : SizedBox(height: 50),
            // Thông tin cá nhân
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Thông tin cá nhân',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30),
                  Responsive.isDesktop(context)
                      ?
                      // Thông tin cá nhân screen desktop
                      Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: ClipOval(
                                      child: Image.asset('assets/no-image.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 7,
                                child: Column(
                                  children: [
                                    buildDataRow('Họ và tên',
                                        'Nguyễn Hoài Nam', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow('Email',
                                        'nguyenhoainamkory@gmail.com', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow(
                                        'Ngày sinh', '21/08/2001', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow('Giới tính', 'Nam', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow(
                                        'Số điện thoại', '0909360325', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow(
                                        'Địa chỉ',
                                        '123 Đ. Cộng Hoài, P. 15, Q. Tân Bình, Tp. HCM',
                                        200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow(
                                        'Năm tốt nghiệp', '2023', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow('Tốt nghiệp trường',
                                        'Đại học Nguyễn Tất Thành', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow(
                                        'Khoa', 'Công nghệ thông tin', 200),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buildDataRow('GPA', '7.25', 200),
                                  ],
                                )),
                          ],
                        )
                      :
                      // Thông tin cá nhân screen mobile
                      Column(
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: ClipOval(
                                      child: Image.asset('assets/no-image.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                                // flex: 7,
                                child: Column(
                              children: [
                                buildDataRow(
                                    'Họ và tên', 'Nguyễn Hoài Nam', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('Email',
                                    'nguyenhoainamkory@gmail.com', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('Ngày sinh', '21/08/2001', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('Giới tính', 'Nam', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow(
                                    'Số điện thoại', '0909360325', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow(
                                    'Địa chỉ',
                                    '123 Đ. Cộng Hoài, Q. Tân Bình, Tp. HCM',
                                    100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('Năm tốt nghiệp', '2023', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('Tốt nghiệp trường',
                                    'Đại học Nguyễn Tất Thành', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow(
                                    'Khoa', 'Công nghệ thông tin', 100),
                                SizedBox(
                                  height: 10,
                                ),
                                buildDataRow('GPA', '7.25', 100),
                              ],
                            )),
                          ],
                        )
                ],
              ),
            ),
            Responsive.isDesktop(context)
                ? SizedBox(
                    height: 100,
                  )
                : SizedBox(height: 50),
            Column(
              children: [
                Text(
                  'My course',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 400,
                  width: 850,
                  child: DataTableDetailInformation(),
                ),
              ],
            ),
            Responsive.isDesktop(context)
                ? SizedBox(
                    height: 100,
                  )
                : SizedBox(height: 50),
            Footer()
          ],
        ),
      ),
    );
  }
}

Widget buildDataRow(String title, String content, double widthSizebox) {
  return Row(
    children: [
      SizedBox(
        width: widthSizebox,
        child: Text(
          '$title:',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(content),
    ],
  );
}

class DataTableDetailInformation extends StatefulWidget {
  const DataTableDetailInformation({Key? key}) : super(key: key);

  @override
  State<DataTableDetailInformation> createState() =>
      _DataTableDetailInformationState();
}

class _DataTableDetailInformationState
    extends State<DataTableDetailInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              'Khóa học',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Lịch khai giảng',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Tên giảng viên',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'lịch học',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Action',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ],
          source: DataSource(),
          rowsPerPage: 5,
        ),
      ),
    );
  }
}

class Data {
  final num id;
  final String courseName;
  final String startSchedule;
  final String lecturerName;
  final String schedule;

  Data({
    required this.id,
    required this.courseName,
    required this.startSchedule,
    required this.lecturerName,
    required this.schedule,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 2,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 3,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 4,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 5,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 6,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 7,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
    ),
    Data(
      id: 8,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      lecturerName: 'Nguyễn Hoài Nam',
      schedule: '7h - 11h t2,4,6',
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
        DataCell(Text(data.courseName)),
        DataCell(Text(data.startSchedule)),
        DataCell(Text(data.lecturerName)),
        DataCell(Text(data.schedule)),
        //customize Row action: edit and delete
        DataCell(
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue), // Màu nền của nút
              foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white), // Màu văn bản trên nút
            ),
            child: Text(
              'Detail',
              style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
            ),
          ),
        )
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
