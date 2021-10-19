import 'package:flutter/material.dart';

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