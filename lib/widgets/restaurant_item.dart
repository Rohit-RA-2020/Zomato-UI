import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                constraints:
                    const BoxConstraints.expand(height: 200.0, width: 450),
                alignment: Alignment.bottomRight,
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 8.0, top: 8.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://blogs.forbes.com/kylewong/files/2018/01/Large-2-Topping_Boxes_1_5x7-2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_add_outlined,
                            color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child:
                              Text('38 mins', style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Domino\'s Pizza',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '4.3 ⭐',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green.shade800,
                        borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Pizza, fast Food, Beverages',
                      style: GoogleFonts.openSans()),
                  Text('₹150 for one', style: GoogleFonts.openSans())
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xFF707ebd),
                    radius: 10,
                    child: Icon(
                      Icons.trending_up,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text('5750+ orders placed from here recently'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
