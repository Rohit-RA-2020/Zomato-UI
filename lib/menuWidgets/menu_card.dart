import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Bestseller',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                const Text(
                  'Idli Sambar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'In South Indian',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                const Text(
                  '₹88.58',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text('2 pcs of Idli served with sambar and chutney',
                    style: TextStyle(fontSize: 12)),
                const Text(''),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: 140,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/momo.png'),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                  child: Text('ADD',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.pink)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
