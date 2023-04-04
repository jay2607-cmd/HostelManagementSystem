// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hms/drawers/studentfunction/attendance.dart';
import 'package:hms/drawers/studentfunction/change_password.dart';
import 'package:hms/drawers/studentfunction/complain_box.dart';
import 'package:hms/drawers/studentfunction/myprofile.dart';
import 'package:hms/drawers/studentfunction/room_details.dart';
import 'package:hms/drawers/studentfunction/studentdashboard.dart';
import 'package:hms/pages/firstpage.dart';


class StudentDrawer extends StatelessWidget {
  const StudentDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/drawerbg.jpg",),
                    fit: BoxFit.cover),
                // color: Color.fromRGBO(50, 75, 205, 1)
              ),
              margin: EdgeInsets.zero,
              accountName: Text(
                "mihir shingala",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "mihirshingala02@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.asset("assets/images/profile.jpg",
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height:25 ,
            ),
            // Divider(height: 1, thickness:0.7,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentDashBoard(notes: '',)),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.dashboard_rounded,
                      color: Colors.black,
                    ),

                    title: Text(
                      "Dashboard",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),

                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SmyProfile()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.black,
                    ),
                    title: Text(
                      "My Profile",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SroomDetails()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.home_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Room Details",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScomplainBox()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Complain Box",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sattendance()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.event_available_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Attendance",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SchangePassword()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.password_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Change Password",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstPage()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.logout_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Logout",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
