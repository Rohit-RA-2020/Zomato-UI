import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zomato_ui/menuWidgets/app_bar.dart';
import 'package:zomato_ui/menuWidgets/dining_widget.dart';
import 'package:zomato_ui/menuWidgets/menu_card.dart';
import 'package:zomato_ui/menuWidgets/misc_details.dart';
import 'package:zomato_ui/menuWidgets/review_widget.dart';
import 'package:zomato_ui/widgets/search_bar.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController1;

  @override
  void initState() {
    super.initState();
    tabController1 = TabController(vsync: this, length: 3, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  bool _veg = false;
  bool _nonv = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Browse Menu'),
        icon: const Icon(Icons.menu),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [customAppBar(context, tabController1!)],
          body: TabBarView(
            controller: tabController1,
            children: <Widget>[
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: <Widget>[
                  const MiscDetails(),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SearchBox('Search within the menu...'),
                  ),
                  Row(
                    children: [
                      Switch(
                        value: _veg,
                        activeColor: Colors.green,
                        onChanged: (bool newValue) {
                          setState(() {
                            _veg = newValue;
                          });
                        },
                      ),
                      const Text('Veg'),
                      Switch(
                        value: _nonv,
                        activeColor: Colors.red,
                        onChanged: (bool newValue) {
                          setState(() {
                            _nonv = newValue;
                          });
                        },
                      ),
                      const Text('Non-Veg'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Recommended',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  const MenuCard(),
                  const Divider(),
                  const MenuCard(),
                  const Divider(),
                  const MenuCard(),
                  const Divider(),
                  const MenuCard(),
                  const Divider(),
                ],
              ),
              const DiningItems(),
              const ReviewItem()
            ],
          ),
        ),
      ),
    );
  }
}