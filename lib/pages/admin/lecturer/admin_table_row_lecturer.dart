import 'package:flutter/material.dart';

class DataTableAdminLecturer extends StatefulWidget {
  const DataTableAdminLecturer({Key? key}) : super(key: key);

  @override
  State<DataTableAdminLecturer> createState() => _DataTableAdminLecturerState();
}

class _DataTableAdminLecturerState extends State<DataTableAdminLecturer> {
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
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Date Of Birth',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Specialization',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Experience',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Status',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Salary',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Start day',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Degree',
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
  final String name;
  final String email;
  final DateTime dateOfBirth;
  final String specialization;
  final String experience;
  final String status;
  final String salary;
  final String startday;
  final String degree;

  Data({
    required this.id,
    required this.image,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.specialization,
    required this.experience,
    required this.status,
    required this.salary,
    required this.startday,
    required this.degree,
  });
}

class DataSource extends DataTableSource {
  final List<Data> _data = [
    Data(
      id: 1,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Nam',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'java back-end',
      experience: '3 - 5 năm',
      status: 'Chính thức',
      salary: '15.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 2,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 3,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 4,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 5,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 6,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 7,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 8,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 9,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 10,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 11,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 12,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 13,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 14,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 15,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 16,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 17,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 18,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 19,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 20,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
    ),
    Data(
      id: 21,
      image:
          'https://res.cloudinary.com/duv5ttmh4/image/upload/v1707363827/products/Giuong-tang-tre-em-thiet-ke-dep-GT6818.jpg.jpg',
      name: 'Nguyễn Hoài Linh',
      email: 'namkory@gmail.com',
      dateOfBirth: DateTime.now(),
      specialization: 'Nodejs back-end',
      experience: '1 - 3 năm',
      status: 'Thử việc',
      salary: '10.000.000VNĐ',
      startday: '14/04/2024',
      degree: 'NTTU, TOEIC',
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
        DataCell(Text(data.name)),
        DataCell(Text(data.email)),
        DataCell(Text(data.dateOfBirth.toString())),
        DataCell(Text(data.specialization)),
        DataCell(Text(data.experience.toString())),
        DataCell(Text(data.status)),
        DataCell(Text(data.salary)),
        DataCell(Text(data.startday)),
        DataCell(Text(data.degree)),
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
