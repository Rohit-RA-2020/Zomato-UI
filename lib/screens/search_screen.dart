import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchBox(),
            ),
            TabBarWidget(tabController1: tabController1)
          ],
        ),
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
      padding: const EdgeInsets.all(8.0),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            6.0,
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
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                )),
            hintText: 'Search here',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
