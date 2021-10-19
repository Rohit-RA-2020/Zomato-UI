import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiscDetails extends StatelessWidget {
  const MiscDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.delivery_dining, color: Colors.black),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('MODE', style: GoogleFonts.openSans(fontSize: 10)),
                  Text('delivery',
                      style: GoogleFonts.openSans(
                          fontSize: 9, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.watch, color: Colors.black),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('TIME', style: GoogleFonts.openSans(fontSize: 10)),
                  Text('30 mins',
                      style: GoogleFonts.openSans(
                          fontSize: 9, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.star, color: Colors.black),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('OFFERS', style: GoogleFonts.openSans(fontSize: 10)),
                  Text('no offers',
                      style: GoogleFonts.openSans(
                          fontSize: 9, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}