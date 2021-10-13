import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/pro_offer_card.dart';

class ProPage extends StatefulWidget {
  const ProPage({Key? key}) : super(key: key);

  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              'zomato PRO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            controller: tabController,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: const <Tab>[
              Tab(text: '3 months'),
              Tab(text: '12 months'),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const <Widget>[
            ProCard(price: 'at ₹200 for 3 months'),
            ProCard(price: 'at ₹750 for 12 months'),
          ],
        ),
      ),
    );
  }
}

class ProCard extends StatefulWidget {
  const ProCard({Key? key, required this.price}) : super(key: key);

  final String price;

  @override
  State<ProCard> createState() => _ProCardState();
}

class _ProCardState extends State<ProCard> with SingleTickerProviderStateMixin {
  TabController? tabController1;

  @override
  void initState() {
    super.initState();
    tabController1 = TabController(vsync: this, length: 2, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        OfferCard(price: widget.price),
        ProTabBar(tabController1: tabController1)
      ],
    );
  }
}

class ProTabBar extends StatelessWidget {
  const ProTabBar({
    Key? key,
    required this.tabController1,
  }) : super(key: key);

  final TabController? tabController1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: Colors.grey.shade900,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey.shade700,
              controller: tabController1,
              tabs: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'DELIVERY',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'DINING',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, top: 40.0, bottom: 15.0),
            child: Text(
              'More Pro Restaurants near you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          ListBuilder(context)
        ],
      ),
    );
  }
}

ListBuilder(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
      ListTileItem(),
      Divider(),
    ],
  );
}

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: const Image(
          image: AssetImage('assets/images/momo.png'),
        ),
      ),
      title: const Text('Dahiya Momos'),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.shade800,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              '4.3⭐',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 2.0),
            child: Text('Bajaj Nagar'),
          ),
          Text('Extra 10% off'),
        ],
      ),
    );
  }
}
