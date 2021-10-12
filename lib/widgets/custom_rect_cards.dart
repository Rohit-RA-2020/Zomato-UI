import 'package:flutter/material.dart';

class CustomRectangualarCard extends StatelessWidget {
  const CustomRectangualarCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            CardItem(img: 'assets/icons/pro.png', name: 'Pro'),
            CardItem(img: 'assets/icons/desert.png', name: 'Desert'),
            CardItem(img: 'assets/icons/pubs.png', name: 'Pub/Bar'),
            CardItem(img: 'assets/icons/snacks.png', name: 'Snacks'),
          ],
        )
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);

  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8,
      child: Column(
        children: <Widget>[
          Image.asset(
            img,
            height: 80,
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(name),
          )
        ],
      ),
    );
  }
}