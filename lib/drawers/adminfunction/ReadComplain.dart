// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ReadComplain extends StatelessWidget {
  String complains;
   ReadComplain({Key? key, required this.complains}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Complains"),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
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
                  child: Center(child: Text("Complains",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),)),
                ),
                Divider(thickness: 0.7  ,height: 2, color: Colors.black,),
                Padding(
                  padding:  EdgeInsets.zero,
                  child: Text('$complains', style: TextStyle(fontSize: 20, color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
