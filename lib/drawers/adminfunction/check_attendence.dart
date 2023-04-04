// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
class CheckAttendance extends StatelessWidget {
  const CheckAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Attendance"),
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
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
                  trailing: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Present", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ),
              Card(
                child: ListTile(
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
                  trailing: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Absent", style: TextStyle(color: Colors.green,  fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ),Card(
                child: ListTile(
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
                  trailing: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Present", style: TextStyle(color: Colors.green,  fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ),Card(
                child: ListTile(
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
                  trailing: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Absent", style: TextStyle(color: Colors.green,  fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ),Card(
                child: ListTile(
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
                  trailing: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Present", style: TextStyle(color: Colors.green,  fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
