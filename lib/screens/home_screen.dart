import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Order Page'),
    Text('Get Out Page'),
    Text('Pro Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: const <Widget>[
              Icon(Icons.location_pin, color: Colors.red),
              Text(
                ' Vayusena Nagar',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingBag),
              label: 'Order',
            ),
            const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoePrints),
              label: 'Go Out',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.certificate,
                  color: _selectedIndex == 2 ? Colors.red : null),
              label: 'Pro',
            )
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
