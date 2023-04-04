// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hms/routes/routes.dart';

import '../routes/routes.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          // color: Color(0xFF2A8FD2),
          // alignment: Alignment.center,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset("assets/images/download1.jpg",),
              SizedBox(height: 22,),
              Text(
                'Welcome To Hostel',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Admin Login",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17, color: Colors.lightBlue),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {Navigator.pushNamed(context, MyRoute.AdminloginRoute);},
                        child: Text("Admin",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20, color: Color(
                                  0xFFFFFFFF))),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                          shape:  RoundedRectangleBorder(borderRadius:BorderRadius.circular(6.0),
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Student Login",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17, color: Colors.lightBlue),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {Navigator.pushNamed(context, MyRoute.StudentloginRoute);},
                        child: Text("Student",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20, color: Color(
                                0xFFFFFFFF))),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                          shape:  RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
