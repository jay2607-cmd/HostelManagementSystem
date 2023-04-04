// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupOfStudent extends StatefulWidget {
const SignupOfStudent({Key? key}) : super(key: key);

@override
State<SignupOfStudent> createState() => _SignupOfStudentState();
}

class _SignupOfStudentState extends State<SignupOfStudent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/download1.jpg",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome To Student Sign Up",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.blue, letterSpacing: .5, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // border: InputBorder.none,
                      //focusedBorder: InputBorder.none,
                      //enabledBorder: InputBorder.none,
                      //errorBorder: InputBorder.none,
                      //disabledBorder: InputBorder.none,
                      hintText: "Username",
                      labelText: "Username",
                      labelStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter a password",
                      labelText: "password",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ), SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Re-enter a password",
                      labelText: "Confirm password",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                       // fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, "/loginofstudent");
                  //   },
                  //   child: Text(
                  //     "Sign Up",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 23.0,
                  //     ),
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.deepPurple,
                  //     padding: EdgeInsets.symmetric(horizontal: 133, vertical: 12),
                  //   ),
                  // ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurpleAccent,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: (){
                        Navigator.pushNamed(context, "/loginofstudent");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Don't have an account?",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.blue,
                                  letterSpacing: .5,
                                  fontSize: 18),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/loginofstudent");
                        },
                        child: Text(
                          "login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 11),
                        ),
                      ),
                    ],
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
