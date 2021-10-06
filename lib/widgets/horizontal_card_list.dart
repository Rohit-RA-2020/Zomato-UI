import 'package:flutter/material.dart';

class ScrollableCard extends StatelessWidget {
  const ScrollableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const <Widget>[
        ScrollableWidget(title: 'Fastest Delivery'),
        ScrollableWidget(title: 'Pure Veg'),
        ScrollableWidget(title: 'Rating 4.0+'),
        ScrollableWidget(title: 'Offers'),
        ScrollableWidget(title: 'Cusines'),
        ScrollableWidget(title: 'PRO'),
        ScrollableWidget(title: 'Takeaway'),
        ScrollableWidget(title: 'MAX Safety'),
        ScrollableWidget(title: 'More'),
        ScrollableWidget(title: 'Popular'),
      ],
    );
  }
}

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 11),
          ),
        ),
      ),
    );
  }
}
