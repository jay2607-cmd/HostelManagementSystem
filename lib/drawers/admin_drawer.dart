// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hms/drawers/studentfunction/change_password.dart';
import 'package:hms/pages/firstpage.dart';
import 'adminfunction/ReadComplain.dart';
import 'adminfunction/addnotes.dart';
import 'adminfunction/admindashboard.dart';
import 'adminfunction/check_attendence.dart';
import 'adminfunction/managerooms/manageroom.dart';
import 'adminfunction/managestudent/managestudentroom.dart';


class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

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
                "admin",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "admin123@gmail.com",
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
              height:15,
            ),
            // Divider(height: 1, thickness:0.7,color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminDashboard()),
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
                  // ListTile(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => AddCourse()),
                  //     );
                  //     // Navigator.of(context).pop();
                  //   },
                  //   leading: Icon(
                  //     CupertinoIcons.doc_on_doc_fill,
                  //     color: Colors.black,
                  //   ),
                  //   title: Text(
                  //     " Add Course",
                  //     textScaleFactor: 1.2,
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // ),ListTile(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => SmyProfile()),
                  //     );
                  //     // Navigator.of(context).pop();
                  //   },
                  //   leading: Icon(
                  //     CupertinoIcons.doc_on_doc_fill,
                  //     color: Colors.black,
                  //   ),
                  //   title: Text(
                  //     "Manage Course",
                  //     textScaleFactor: 1.2,
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // ),
                  // ListTile(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => AddRoom()),
                  //     );
                  //     // Navigator.of(context).pop();
                  //   },
                  //   leading: Icon(
                  //     Icons.home_rounded,
                  //     color: Colors.black,
                  //     size: 26,
                  //   ),
                  //   title: Text(
                  //     "Add Rooms",
                  //     textScaleFactor: 1.2,
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageRoom()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.home_rounded,
                      color: Colors.black,
                      size: 26,
                    ),
                    title: Text(
                      "Manage Rooms",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageStudentRoom()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 26,
                    ),
                    title: Text(
                      "Manage Students",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddNotes()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.notes,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Add Notes",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReadComplain(complains: '',)),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Complains",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.black),
                    ),
                  ), ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CheckAttendance()),
                      );
                      // Navigator.of(context).pop();
                    },
                    leading: Icon(
                      Icons.event_note,
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


