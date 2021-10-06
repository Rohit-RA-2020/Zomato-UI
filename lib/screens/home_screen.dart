import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato_ui/screens/go_out_page.dart';
import 'package:zomato_ui/screens/order_page.dart';
import 'package:zomato_ui/screens/pro_page.dart';
import 'package:zomato_ui/screens/profile_screen.dart';

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

  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    OrderPage(),
    GoOut(),
    ProPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _selectedIndex != 2
            ? AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: const <Widget>[
                    Icon(Icons.location_pin, color: Colors.red),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Vayusena Nagar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.transparent,
                          shadows: [
                            Shadow(
                                offset: Offset(0, -3.5), color: Colors.black),
                          ],
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dashed,
                          decorationColor: Colors.black54,
                          decorationThickness: 2,
                        ),
                      ),
                    )
                  ],
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                  )
                ],
              )
            : null,
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
        body: _selectedIndex == 0 ? const OrderPage() : const GoOut(),
      ),
    );
  }
}
