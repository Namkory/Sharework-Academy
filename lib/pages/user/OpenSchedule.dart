import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/Navbar.dart';
import 'package:fintech_dashboard_clone/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpenSchedule extends StatefulWidget {
  const OpenSchedule({Key? key}) : super(key: key);

  @override
  State<OpenSchedule> createState() => _OpenScheduleState();
}

class _OpenScheduleState extends State<OpenSchedule> {
  TextEditingController _controller = TextEditingController();

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
                                        'Open Schedule',
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
                            padding: const EdgeInsets.only(top: 30, left: 170),
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Open Schedule',
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
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [
                  Text(
                    '',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  //Search
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                  10.0), // Bo tròn góc viền
                            ),
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder
                                    .none, // Loại bỏ viền của TextField mặc định
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                        10.0), // Khoảng cách nội dung và viền
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50.0,
                          width: 50, // Chiều cao mong muốn
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            // border: Border.all(
                            //   color: Colors.grey, // Màu của viền
                            //   width: 1.0, // Độ dày của viền
                            // ),
                            borderRadius: BorderRadius.circular(
                                10.0), // Bo tròn viền (tuỳ chọn)
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.search),
                            color: Colors.white,
                            onPressed: () {
                              // Thực hiện hành động khi nút tìm kiếm được nhấn
                              print('Search button pressed');
                              // Điều gì đó khác, ví dụ: tìm kiếm trong cơ sở dữ liệu
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  //Table
                  SizedBox(
                    height: 510,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: DataTableOpenSchedule(),
                  ),
                ],
              ),
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

class DataTableOpenSchedule extends StatefulWidget {
  const DataTableOpenSchedule({Key? key}) : super(key: key);

  @override
  State<DataTableOpenSchedule> createState() => _DataTableOpenScheduleState();
}

class _DataTableOpenScheduleState extends State<DataTableOpenSchedule> {
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
              'Khu vực',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'lịch học',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'chỗ trống',
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
  final String courseName;
  final String startSchedule;
  final String area;
  final String schedule;
  final String slot;

  Data({
    required this.id,
    required this.courseName,
    required this.startSchedule,
    required this.area,
    required this.schedule,
    required this.slot,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
    ),
    Data(
      id: 1,
      courseName: 'java fullstack A to Z',
      startSchedule: '16/04/2024',
      area: 'HCM',
      schedule: '7h - 11h t2,4,6',
      slot: '10/12',
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
        DataCell(Text(data.area)),
        DataCell(Text(data.schedule)),
        DataCell(Text(data.slot)),
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
            child: const Text(
              'Đăng ký',
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
