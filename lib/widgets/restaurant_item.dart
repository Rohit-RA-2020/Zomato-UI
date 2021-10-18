import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zomato_ui/screens/menu_screen.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({
    Key? key,
    required this.imgUrl,
    required this.desc,
    required this.time,
    required this.rating,
    required this.price,
    required this.noOrders,
    required this.name,
    required this.address,
    this.addre = '',
  }) : super(key: key);

  final String imgUrl;
  final String desc;
  final String name;
  final String time;
  final String rating;
  final String price;
  final String noOrders;
  final bool address;
  final String addre;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(
                        imgUrl,
                      ),
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
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(time,
                                style: const TextStyle(fontSize: 10)),
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
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '$rating ⭐',
                          style: const TextStyle(
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
                    Text(desc, style: GoogleFonts.openSans()),
                    Text('₹$price for one', style: GoogleFonts.openSans())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: address ? Text(addre) : null,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Color(0xFF707ebd),
                      radius: 10,
                      child: Icon(
                        Icons.trending_up,
                        size: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child:
                          Text('$noOrders+ orders placed from here recently'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
