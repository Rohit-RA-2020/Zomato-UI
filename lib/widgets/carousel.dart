import 'package:flutter/material.dart';

class CarouselList extends StatelessWidget {
  const CarouselList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CarouselItem(
              img: 'assets/cimg/ball.jpg',
              text: 'Live Sports Screenings',
              subText: '11 places',
            ),
            SizedBox(
              width: 10,
            ),
            CarouselItem(
              img: 'assets/cimg/tre.jpg',
              text: 'Trending this week',
              subText: '21 places',
            ),
            SizedBox(
              width: 10,
            ),
            CarouselItem(
              img: 'assets/cimg/insta.jpg',
              text: 'Insta-Worthy',
              subText: '20 places',
            ),
            SizedBox(
              width: 10,
            ),
            CarouselItem(
              img: 'assets/cimg/cc.jpg',
              text: 'Sweet tooth',
              subText: '11 places',
            ),
            SizedBox(
              width: 10,
            ),
            CarouselItem(
              img: 'assets/cimg/db.jpg',
              text: 'Must Visits Restaurants in Nagpur',
              subText: '20 places',
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key? key,
    required this.img,
    required this.text,
    required this.subText,
  }) : super(key: key);

  final String img;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(height: 175.0, width: 150),
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(
              subText,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}