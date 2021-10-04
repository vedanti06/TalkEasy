import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dept.dart';
void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Departments()));

class Departments extends StatefulWidget {
  @override
  DepartmentsState createState() => new DepartmentsState();
}

class DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Departments",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Dept()
        ],
      ),
    );
  }
}
