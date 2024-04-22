import 'package:flutter/material.dart';

class DataTableAdminManager extends StatefulWidget {
  const DataTableAdminManager({Key? key}) : super(key: key);

  @override
  State<DataTableAdminManager> createState() => _DataTableAdminManagerState();
}

class _DataTableAdminManagerState extends State<DataTableAdminManager> {
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
              'Image',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Manager name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Email',
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
  final String image;
  final String managerName;
  final String email;
  final String password;

  Data({
    required this.id,
    required this.image,
    required this.managerName,
    required this.email,
    required this.password,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
    ),
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      managerName: 'Nguyễn Hoài Nam koryyyyyyyyyyy',
      email: 'nguyenhoainamkory@gmail.com',
      password: '',
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
        DataCell(SizedBox(
          width: 55,
          // height: 100,
          child: CustomImageCell(imageUrl: data.image),
        )),
        DataCell(Text(data.managerName)),
        DataCell(Text(data.email)),
        // DataCell(Text(data.password)),
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

class CustomImageCell extends StatelessWidget {
  final String imageUrl;

  const CustomImageCell({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        imageUrl); // Sử dụng Image.network để hiển thị hình ảnh từ URL
  }
}
