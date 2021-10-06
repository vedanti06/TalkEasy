import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talkeasy_loginsignup/departments.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
          title: Text("Talk Easy", style: GoogleFonts.openSans(
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
                leading: Icon(Icons.home, color: Colors.black,),
                title: Text("Home", style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person_search_sharp, color: Colors.black,),
                title: Text("Departments", style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Departments()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.gps_fixed, color: Colors.black,),
                title: Text("Maps", style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.rate_review, color: Colors.black,),
                title: Text("Review", style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black,),
                title: Text("Logout", style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),),
                onTap: () {},
              ),
            ]),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(22.0),
          children: [
            CarouselSlider(
              items: [
                //Reception
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/photos/happy-hotel-clerks-are-welcoming-professional-at-counter-picture-id1164435677?b=1&k=20&m=1164435677&s=170667a&w=0&h=MjxMuMxtO8fa2gzOZEQ1-LjlV1aZQTFsiHcZ0X6GGg0="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Screen
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1558959357-685f9c7ace7b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjBtYW5hZ2VtZW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Room
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/photos/luxurious-apartment-master-bedroom-interior-with-bathroom-with-shower-picture-id1269416714?b=1&k=20&m=1269416714&s=170667a&w=0&h=y-7KXehLzBgkBiunl-bVMK3r4aTAOyBrVQK61LnQiks="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Restaurant
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/photos/cozy-restaurant-for-gathering-with-friends-picture-id1159992039?b=1&k=20&m=1159992039&s=170667a&w=0&h=prGK7E_h62IuZFQNtnCDPhqmG6y1-MV-l_NiJhuAl7Q="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Gym
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/photos/interior-of-modern-gym-picture-id995623416?b=1&k=20&m=995623416&s=170667a&w=0&h=uJsGsVCCY2EwI3CEdItcNHyImLdsC6wtJf--M3b45Fc="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Pool
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/photos/resort-swimming-pool-picture-id119926339?b=1&k=20&m=119926339&s=170667a&w=0&h=jLH1rJIboQDvcLni6VU2A874EGwv9HS2DKNY7hymy3I="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 600),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children:
                [
                  Text("Features", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26
                  ),),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.teal
                  ),
                  height: 200.0,
                  width: 350.0,
                  child: Center(child: _fade()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _fade() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ScaleAnimatedText(
                  'Translator',
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  duration: Duration(seconds: 3),
                ),
                FadeAnimatedText(
                  'Use this feature to communicate easily overcoming language barriers!',
                  textStyle: TextStyle(fontSize: 20.0),
                    duration: Duration(seconds: 5),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7
                ),
                ScaleAnimatedText(
                  'Chat',
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  duration: Duration(seconds: 3),
                ),
                FadeAnimatedText(
                    'Use this feature to chat with the staff, order what you all want and much more!',
                    textStyle: TextStyle(fontSize: 20.0),
                    duration: Duration(seconds: 5),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7
                ),
                ScaleAnimatedText(
                  'Maps',
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  duration: Duration(seconds: 3),
                ),
                FadeAnimatedText(
                    'Use this feature to navigate places you want to visit outside your hotel!',
                    textStyle: TextStyle(fontSize: 20.0),
                    duration: Duration(seconds: 5),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7
                ),
                ScaleAnimatedText(
                  'Review',
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  duration: Duration(seconds: 3),
                ),
                FadeAnimatedText(
                    'Use this feature to give your valuable reviews and feedback to the enhance the stay for future guests!',
                    textStyle: TextStyle(fontSize: 20.0),
                    duration: Duration(seconds: 5),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
