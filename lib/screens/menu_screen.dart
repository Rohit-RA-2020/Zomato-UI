import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Column(
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
          )
        ],
      ),
    );
  }
}

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

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.tabController1,
  }) : super(key: key);

  final TabController? tabController1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 12.0, right: 8.0, left: 8.0, bottom: 8.0),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          color: Colors.grey.shade900,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey.shade700,
        controller: tabController1,
        tabs: const <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'DELIVERY',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'DINING',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'REVIEWS',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'The Bukhara',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('North Indian, Mughlai'),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  '3.9 ⭐',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'DELIVERY',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.green.shade800,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
        )
      ],
    );
  }
}
