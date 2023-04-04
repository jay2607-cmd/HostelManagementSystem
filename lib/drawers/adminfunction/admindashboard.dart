// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'managerooms/manageroom.dart';
import 'managestudent/managestudentroom.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Color.fromRGBO(50, 75, 203, 1),
          title: Text(
            " Admin Dashboard",
            style: TextStyle(
              //color: Colors.white,
            ),
          ),
        ),
        body: Material(
          //color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 250,
                    width: 400,
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
                          height: 35,
                        ),
                        Text("5",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 33,color: Colors.black),),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Students' ,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 28, color: Colors.black),),
                        SizedBox(
                          height: 35,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (builder) => ManageStudentRoom()));
                          },
                          child: Text(
                            "Full Detail",
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
                                borderRadius: BorderRadius.circular(25)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  width: 420,
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
                        height: 35,
                      ),
                      Text("8",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 33,color: Colors.black),),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Room' ,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 28, color: Colors.black),),
                      SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (builder)=> ManageRoom()));
                        },
                        child: Text(
                          "Total Rooms",
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
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 41, vertical: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 25,
                // ),
                // Container(
                //   height: 200,
                //   width: 420,
                //   decoration: BoxDecoration(
                //     color: Color(0xBF80FFBF),
                //     border: Border.all(
                //       color: Color(0xff494646),
                //     ),
                //     borderRadius: BorderRadius.circular(6),
                //   ),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       SizedBox(
                //         height: 25,
                //       ),
                //       Text("5",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30,color: Colors.black),),
                //       SizedBox(
                //         height: 10,
                //       ),
                //       Text('Total Courses' ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.black),),
                //       SizedBox(
                //         height: 35,
                //       ),
                //       ElevatedButton(
                //         onPressed: () {
                //           // Navigator.push(context, MaterialPageRoute(builder: (builder) => SmyProfile()));
                //         },
                //         child: Text(
                //           "Full Detail",
                //           style: TextStyle(
                //             // fontWeight: FontWeight.bold,
                //               fontSize: 18.0,
                //               color: Color(0xfff4f2f2)
                //           ),
                //         ),
                //         style: ElevatedButton.styleFrom(
                //           primary: Color(0xff0f0f0f),
                //           // shape: StadiumBorder(),
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(25)),
                //           padding: EdgeInsets.symmetric(
                //               horizontal: 45, vertical: 13),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
