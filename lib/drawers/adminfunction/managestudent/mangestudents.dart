// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hms/drawers/adminfunction/managestudent/studentprofile.dart';

class ManageStudent extends StatelessWidget {
  const ManageStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Manage Student",),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentProfile()),
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Mihir Shingala',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),  Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentProfile()),
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Kenil Miyani',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),  Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentProfile()),
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Abhishek Shekhada',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ), Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentProfile()),
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Harshil Jagani',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ), Card(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentProfile()),
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Yogi Patel',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
