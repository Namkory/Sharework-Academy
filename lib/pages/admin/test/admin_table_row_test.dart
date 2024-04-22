import 'package:flutter/material.dart';

class DataTableAdminTest extends StatefulWidget {
  const DataTableAdminTest({Key? key}) : super(key: key);

  @override
  State<DataTableAdminTest> createState() => _DataTableAdminTestState();
}

class _DataTableAdminTestState extends State<DataTableAdminTest> {
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
              'Test name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Content',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Comment',
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
  final String testName;
  final String content;
  final String comment;

  Data({
    required this.id,
    required this.testName,
    required this.content,
    required this.comment,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),

    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
    ),
    Data(
      id: 1,
      testName: 'Cú pháp java và kiến thức cơ bản',
      content:
          "Phần I: Trắc nghiệm (50 điểm) \nHãy chọn phương án đúng nhất từ các phương án được đưa ra. \nTrong Java, biến phải được khai báo với từ khoá nào? \na) define \nb) var \nc) int \nd) declare",
      comment:
          'Làm rất tốt tuy nhiên cần cải thiện một vài điểm để cải thiện hơn',
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
        DataCell(Text(data.testName)),
        DataCell(
          Text(
            data.content.length <= 70
                ? data.content
                : '${data.content.substring(0, 70)}...',
          ),
        ),
        DataCell(
          Text(
            data.comment.length <= 70
                ? data.comment
                : '${data.comment.substring(0, 70)}...',
          ),
        ),
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
              child: const Text(
                'Edit',
                style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
              ),
            ),
            const SizedBox(
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
              child: const Text(
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
