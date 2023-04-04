// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hms/drawers/student_drawer.dart';
import 'package:hms/drawers/studentfunction/myprofile.dart';
import 'package:hms/drawers/studentfunction/room_details.dart';


class HomeStudent extends StatelessWidget {
  const HomeStudent({Key? key}) : super(key: key) ;

  get notes => "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Student Dashboard" ,
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        ),

        body:Material(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Color(0xBFAAFF80),
                            border: Border.all(
                              color: Color(0xff494646),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                              ),
                              // Text("10",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.black),),
                              Text('My Profile' ,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,  color: Colors.black),),
                              SizedBox(
                                height: 25,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=> SmyProfile()));
                                },
                                child: Text(
                                  "Full Details",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.white
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  // shape: StadiumBorder(),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Color(0xBF80FFBF),
                            border: Border.all(
                              color: Color(0xff494646),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                              ),
                              // Text("10",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.black),),
                              Text('My Room' ,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,  color: Colors.black),),
                              SizedBox(
                                height: 25,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=> SroomDetails()));
                                },
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Colors.white
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  // shape: StadiumBorder(),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 23, vertical:8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff494646),
                      ),
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(child: Text("Notice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
                        ),
                        Divider(thickness: 0.7  ,height: 2, color: Colors.black,),
                        Padding(
                          padding:  EdgeInsets.zero,
                          child: Text('$notes', style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer:  StudentDrawer(
        ),
      ),
    );
  }
}
