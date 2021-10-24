import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomato_ui/menuWidgets/title_widget.dart';

SliverAppBar customAppBar(BuildContext context, TabController tabController1) {
  return SliverAppBar(
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
          icon: const Icon(Icons.bookmark_border_outlined, color: Colors.black),
          onPressed: () {}),
      IconButton(
        icon: const Icon(Icons.share_outlined, color: Colors.black),
        onPressed: () {},
      )
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: Column(
        children: <Widget>[
          const TitleWidget(),
          Padding(
            padding: const EdgeInsets.only(
                top: 12.0, right: 8.0, left: 8.0, bottom: 8.0),
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
              tabs: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.w),
                  child: const Text(
                    'DELIVERY',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: const Text(
                    'DINING',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: const Text(
                    'REVIEWS',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
