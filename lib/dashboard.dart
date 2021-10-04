import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talkeasy_loginsignup/departments.dart';

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
            iconTheme: IconThemeData(color: Colors.black),
            title: Text("TalkEasy",style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.lightGreenAccent,
          ),
          drawer: Drawer(
            child: ListView(padding: EdgeInsets.all(8.0), children: [
              UserAccountsDrawerHeader(
                accountName: Text("Name"),
              ),
              ListTile(
                leading: Icon(Icons.home,color: Colors.deepPurple,),
                title: Text("Home",style: TextStyle(fontWeight: FontWeight.w700,),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person_search_sharp,color: Colors.deepPurple,),
                title: Text("Departments",style: TextStyle(fontWeight: FontWeight.w700,),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Departments()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.gps_fixed,color: Colors.deepPurple,),
                title: Text("Maps",style: TextStyle(fontWeight: FontWeight.w700,),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.rate_review,color: Colors.deepPurple,),
                title: Text("Review",style: TextStyle(fontWeight: FontWeight.w700,),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout,color: Colors.deepPurple,),
                title: Text("Logout",style: TextStyle(fontWeight: FontWeight.w700,),),
                onTap: () {},
              ),
            ]),
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

