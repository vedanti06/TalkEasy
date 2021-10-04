import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talkeasy_loginsignup/departments.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }

// class _State extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Text("Talk Easy",style: GoogleFonts.openSans(
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
          body:(
              Column(
                children: [
                  Center(
                      child: Container(
                        margin: EdgeInsets.only(left:50, top: 40, right: 50),
                        child: Text("Overview of the hotel",
                            textAlign: TextAlign.center),
                      )
                  ),
                ],
              )
          ),
        ));
  }
}

