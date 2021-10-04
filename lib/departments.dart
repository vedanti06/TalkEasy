import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkeasy_loginsignup/dashboard.dart';
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Departments",style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,)),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[300],
          child: ListView(padding: EdgeInsets.all(8.0), children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white24,), child: null,
              // child: Text('Name'),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_search_sharp,color: Colors.black,),
              title: Text("Departments",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Departments()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.gps_fixed,color: Colors.black,),
              title: Text("Maps",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rate_review,color: Colors.black,),
              title: Text("Review",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.black,),
              title: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              onTap: () {},
            ),
          ]),
        ),
      ),
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
                    // Text(
                    //   "Departments",
                    //   style: GoogleFonts.openSans(
                    //       textStyle: TextStyle(
                    //           color: Colors.black,
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold)),
                    // ),
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
