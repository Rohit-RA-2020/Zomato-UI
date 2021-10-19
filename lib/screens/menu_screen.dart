import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zomato_ui/menuWidgets/menu_card.dart';
import 'package:zomato_ui/menuWidgets/misc_details.dart';
import 'package:zomato_ui/menuWidgets/tab_bar.dart';
import 'package:zomato_ui/menuWidgets/title_widget.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_a_photo_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(Icons.bookmark_border_outlined,
                  color: Colors.black),
              onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Browse Menu'),
        icon: const Icon(Icons.menu),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const TitleWidget(),
            TabBarWidget(tabController1: tabController1),
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
      ),
    );
  }
}
