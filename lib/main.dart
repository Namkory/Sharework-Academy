import 'package:fintech_dashboard_clone/layout/app_layout.dart';
import 'package:fintech_dashboard_clone/models/card_details.dart';
import 'package:fintech_dashboard_clone/models/enums/card_type.dart';
import 'package:fintech_dashboard_clone/pages/admin/InstructorSchedule/admin_InstructorSchedule.dart';
import 'package:fintech_dashboard_clone/pages/admin/InstructorSchedule/admin_instructorSchedule_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/admin_dashboard.dart';
import 'package:fintech_dashboard_clone/pages/admin/certificate/admin_certificate.dart';
import 'package:fintech_dashboard_clone/pages/admin/certificate/admin_certificate_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/class/admin_class.dart';
import 'package:fintech_dashboard_clone/pages/admin/class/admin_class_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/courses/admin_course_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/courses/admin_courses.dart';
import 'package:fintech_dashboard_clone/pages/admin/educationProgram/admin_education_program.dart';
import 'package:fintech_dashboard_clone/pages/admin/educationProgram/admin_education_program_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/lecturer/admin_lecturer.dart';
import 'package:fintech_dashboard_clone/pages/admin/lecturer/admin_lecturer_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/manager/admin_manager.dart';
import 'package:fintech_dashboard_clone/pages/admin/manager/admin_manager_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/openSchedule/admin_open_schedule.create.dart';
import 'package:fintech_dashboard_clone/pages/admin/openSchedule/admin_open_schedule.dart';
import 'package:fintech_dashboard_clone/pages/admin/test/admin_test.dart';
import 'package:fintech_dashboard_clone/pages/admin/test/admin_test_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/testMarks/admin_testMarks.dart';
import 'package:fintech_dashboard_clone/pages/admin/testMarks/admin_test_mark_create.dart';
import 'package:fintech_dashboard_clone/pages/admin/user/admin_user.dart';
import 'package:fintech_dashboard_clone/pages/admin/user/admin_user_create.dart';
import 'package:fintech_dashboard_clone/pages/loginPage/registerr.dart';
import 'package:fintech_dashboard_clone/pages/loginPage/login.dart';
import 'package:fintech_dashboard_clone/pages/user/CourseDetail.dart';
import 'package:fintech_dashboard_clone/pages/user/DetailInformation.dart';
import 'package:fintech_dashboard_clone/pages/user/HomePage.dart';
import 'package:fintech_dashboard_clone/pages/user/OpenSchedule.dart';
import 'package:fintech_dashboard_clone/pages/user/courses.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/sections/expense_income_chart.dart';
import 'package:fintech_dashboard_clone/sections/latest_transactions.dart';
import 'package:fintech_dashboard_clone/sections/statics_by_category.dart';
import 'package:fintech_dashboard_clone/sections/upgrade_pro_section.dart';
import 'package:fintech_dashboard_clone/sections/your_cards_section.dart';
import 'package:fintech_dashboard_clone/styles/styles.dart';
import 'package:fintech_dashboard_clone/widgets/controller.dart';
import 'package:fintech_dashboard_clone/widgets/list_courses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FintechDasboardApp());
}

class FintechDasboardApp extends StatelessWidget {
  const FintechDasboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Styles.scaffoldBackgroundColor,
        scrollbarTheme: Styles.scrollbarTheme,
      ),
      // home: const AdminDashboard(),
      routes: {
        '/': (_) => MyHomePage(),
        '/register': (_) => Registerr(),
        '/login': (_) => Login(),
        '/detail-infor': (_) => DetailInformation(),
        '/open-schedule': (_) => OpenSchedule(),
        '/course-detail': (_) => CourseDetail(),
        '/courses': (_) => Courses(),

        //Admin
        '/admin': (_) => AdminDashboard(),
        '/user-page': (_) => UserAdmin(),
        '/lecturer-page': (_) => LecturerAdmin(),
        '/instructorschedule-page': (_) => LecturerInstructorSchedule(),
        '/manager-page': (_) => AdminManager(),
        '/test-page': (_) => TestAdmin(),
        '/testmark-page': (_) => AdminTestMark(),
        '/certificate-page': (_) => AdminCertificate(),
        '/course-page': (_) => AdminCourses(),
        '/educationprogram-page': (_) => AdminEducationProgram(),
        '/class-page': (_) => AdminClass(),
        '/openschedule-page': (_) => AdminOpenSchedule(),
        //route create
        '/create-user': (_) => AdminCreateUser(),
        '/create-lecturer': (_) => AdminCreateLecturer(),
        '/create-lecturer-schedule': (_) => AdminCreateInstructorSchedule(),
        '/create-manager': (_) => AdminCreateManager(),
        '/create-test': (_) => AdminCreateTest(),
        '/create-test-marks': (_) => AdminCreateTestMark(),
        '/create-certificate': (_) => AdminCreateCertificate(),
        '/create-class': (_) => AdminCreateClass(),
        '/create-open-schedule': (_) => AdminCreateOpenSchedule(),
        '/create-courses': (_) => AdminCreateCourse(),
        '/create-education-program': (_) => AdminCreateEducationProgram(),
      },
    );
  }
}
