// import 'package:flutter/material.dart';

// class Data {
//   final num id;
//   final String name;
//   final String email;
//   final DateTime dateOfBirth;
//   final String gender;
//   final num phoneNumber;
//   final String address;
//   final String graduateAt;
//   final String faculty;
//   final String graduationYear;
//   final num gpa;

//   Data({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.dateOfBirth,
//     required this.gender,
//     required this.phoneNumber,
//     required this.address,
//     required this.graduateAt,
//     required this.faculty,
//     required this.graduationYear,
//     required this.gpa,
//   });
// }

// class DataSource extends DataTableSource {
//   List<Data> _data = [
//     Data(
//         id: 1,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 2,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 3,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 4,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 5,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 6,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 7,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 8,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 9,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 10,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 11,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 12,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 13,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 14,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 15,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 16,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 17,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 18,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 19,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 20,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),
//     Data(
//         id: 21,
//         name: 'kory',
//         email: 'kory@gmail.com',
//         dateOfBirth: DateTime.now(),
//         gender: 'Male',
//         phoneNumber: 0909360345,
//         address: 'HCM',
//         graduateAt: 'NTTU',
//         graduationYear: '2023',
//         faculty: 'CNTT',
//         gpa: 7.28),

//     // Add more tasks here...
//   ];

//   @override
//   DataRow? getRow(int index) {
//     if (index >= _data.length) {
//       return null;
//     }
//     final data = _data[index];
//     return DataRow.byIndex(
//       index: index,
//       cells: [
//         DataCell(Text(data.id.toString())),
//         DataCell(Text(data.name)),
//         DataCell(Text(data.email)),
//         DataCell(Text(data.dateOfBirth.toString())),
//         DataCell(Text(data.gender)),
//         DataCell(Text(data.phoneNumber.toString())),
//         DataCell(Text(data.address)),
//         DataCell(Text(data.graduateAt)),
//         DataCell(Text(data.graduationYear)),
//         DataCell(Text(data.faculty)),
//         DataCell(Text(data.gpa.toString())),
//         DataCell(Row(
//           children: [
//             TextButton(
//               onPressed: () {},
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                     Colors.blue), // Màu nền của nút
//                 foregroundColor: MaterialStateProperty.all<Color>(
//                     Colors.white), // Màu văn bản trên nút
//               ),
//               child: Text(
//                 'Edit',
//                 style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             TextButton(
//               onPressed: () {},
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                     Colors.red), // Màu nền của nút
//                 foregroundColor: MaterialStateProperty.all<Color>(
//                     Colors.white), // Màu văn bản trên nút
//               ),
//               child: Text(
//                 'Delete',
//                 style: TextStyle(fontSize: 14), // Cỡ chữ của văn bản
//               ),
//             ),
//           ],
//         ))
//       ],
//     );
//   }

//   @override
//   bool get isRowCountApproximate => false;

//   @override
//   int get rowCount => _data.length;

//   @override
//   int get selectedRowCount => 0;
// }
