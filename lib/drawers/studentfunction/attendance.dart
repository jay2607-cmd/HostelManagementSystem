// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Sattendance extends StatelessWidget {
  const Sattendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Attendance"),
        ),
        body:Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            height: 340,
            width: 380,
            decoration: BoxDecoration(
              //color: Colors.green,
              // border: Border.all(
              //   color: Color(0xff494646),
              // ),
              borderRadius: BorderRadius.horizontal(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Please give your Attendance status' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.blue),),

                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, "/homestudent");
                      },
                      child: Text(
                        "Present",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        // shape: StadiumBorder(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, "/homestudent");
                      },
                      child: Text(
                        "Absent",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        // shape: StadiumBorder(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
