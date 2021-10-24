import 'package:flutter/material.dart';

class DiningItems extends StatelessWidget {
  const DiningItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
            child: Text(
              'About the restaurant',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              constraints:
                  const BoxConstraints.expand(height: 200.0, width: 450),
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, top: 8.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                image: DecorationImage(
                  image: AssetImage('assets/images/pizza.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            minLeadingWidth: 10,
            dense: true,
            leading: Icon(Icons.timelapse),
            title: Text('Open Now | 4pm - 12midnight (Today)'),
            trailing: Icon(Icons.phone_outlined, color: Colors.red),
          ),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -1),
            minLeadingWidth: 10,
            dense: true,
            leading: Icon(Icons.money_outlined),
            title: Text('₹350 for two'),
          ),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -1),
            minLeadingWidth: 10,
            dense: true,
            leading: Icon(Icons.fastfood_outlined),
            title: Text('Serves Bakery, Fast Food, Italian +2 More'),
          ),
          const ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -1),
            minLeadingWidth: 10,
            dense: true,
            leading: Icon(Icons.location_pin),
            title: Text('7.1 kms | Higna T-Point'),
            trailing: Icon(Icons.directions_outlined, color: Colors.red),
          ),
          const Divider(
            thickness: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
            child: Text(
              'More Info',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Table(
            children: const <TableRow>[
              TableRow(
                children: <Widget>[
                  ListTile(
                    minLeadingWidth: 10,
                    dense: true,
                    leading: Icon(Icons.check, color: Colors.green),
                    title: Text('Home Delivery'),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    dense: true,
                    leading: Icon(Icons.check, color: Colors.green),
                    title: Text('TakeAway Available'),
                  )
                ],
              ),
              TableRow(children: <Widget>[
                ListTile(
                  minLeadingWidth: 10,
                  dense: true,
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text('Indoor Seating'),
                ),
                ListTile()
              ])
            ],
          )
        ],
      ),
    );
  }
}
