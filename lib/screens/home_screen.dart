import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato_ui/screens/bottom_location_sheet.dart';
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
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            _selectedIndex != 2
                ? SliverAppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Row(
                      children: <Widget>[
                        InkWell(
                            child: Row(
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
                                            offset: Offset(0, -3.5),
                                            color: Colors.black),
                                      ],
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationStyle:
                                          TextDecorationStyle.dashed,
                                      decorationColor: Colors.black54,
                                      decorationThickness: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: const BottomLocationSheet(),
                                  ),
                                ),
                              );
                            }),
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
                : const SliverAppBar(
                    toolbarHeight: 0.1,
                    primary: false,
                    titleSpacing: 0.0,
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  )
          ],
          body: _selectedIndex == 0
              ? const OrderPage()
              : _selectedIndex == 1
                  ? const GoOut()
                  : const ProPage(),
        ),
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
    );
  }
}
