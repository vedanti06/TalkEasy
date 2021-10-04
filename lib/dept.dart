import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dept extends StatelessWidget {
  Items item1 = new Items(
      title: "Reception",
      img: "assets/reception.png"
  );
  Items item2 = new Items(
    title: "HouseKeeping",
    img: "assets/housekeeping.png",
  );
  Items item3 = new Items(
    title: "Restaurant",
    img: "assets/restaurant.png",
  );
  Items item4 = new Items(
    title: "Spa",
    img: "assets/spa.png",
  );
  Items item5 = new Items(
    title: "Gym",
    img: "assets/gym.png",
  );
  Items item6 = new Items(
    title: "Swimming Pool",
    img: "assets/pool.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0XFFE0E0E0;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 80,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({this.title, this.img});
}
