// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hms/drawers/studentfunction/studentdashboard.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Complain Box"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Enter your important notes ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.0,
              ),
              buildFeedbackform(),
              SizedBox(
                height: 20.0,
              ),
              //buildNumberFiled(),
              //Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

buildCheckItem(title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        )
      ],
    ),
  );
}

class buildFeedbackform extends StatefulWidget {
  const buildFeedbackform({Key? key}) : super(key: key);

  @override
  State<buildFeedbackform> createState() => _buildFeedbackformState();
}

class _buildFeedbackformState extends State<buildFeedbackform> {
  TextEditingController _notes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: 10,
          controller: _notes,
          decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 20),
              hintText: "Notes",
              hintStyle: TextStyle(fontSize: 20, color: Colors.black),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              // child: ElevatedButton(
              //   onPressed: () {
              //     // Navigator.pushNamed(context, "/homestudent");
              //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StudentDashBoard(notes: _notes.text,)));
              //   },
              //   child: Text(
              //     "Submit",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 22.0,
              //     ),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.blue,
              //     // shape: StadiumBorder(),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //     padding:
              //     EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              //   ),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepPurpleAccent,
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    // Navigator.pushNamed(context, "/homeadmin");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StudentDashBoard(notes: _notes.text,)));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
