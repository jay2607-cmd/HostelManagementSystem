// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hms/pages/admin_login.dart';
import 'package:hms/pages/firstpage.dart';
import 'package:hms/pages/homepage_admin.dart';
import 'package:hms/pages/homepage_student.dart';
import 'package:hms/pages/student_login.dart';
import 'package:hms/pages/student_signup.dart';
import 'package:hms/routes/routes.dart';

Future<void> main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/firstpage",
      routes: {
        // "/" :(contex)=> Signup(),
        MyRoute.homestudentRoute: (context) =>HomeStudent(),
        MyRoute.homeadminRoute: (context) => const HomeAdmin(),
        MyRoute.StudentloginRoute: (context) => const LoginOfstudent(),
        MyRoute.StudentsignupRoute: (context) => const SignupOfStudent(),
        MyRoute.AdminloginRoute: (context) => const LoginOfadmin() ,
        MyRoute.firstRoute: (context) => const FirstPage(),
      },
    );
  }
}

