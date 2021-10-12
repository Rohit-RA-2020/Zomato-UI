import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/custom_rect_cards.dart';
import 'package:zomato_ui/widgets/horizontal_card_list.dart';
import 'package:zomato_ui/widgets/search_bar.dart';

class GoOut extends StatelessWidget {
  const GoOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: SearchBox('Restaurant name, cusine, or a dish'),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: SizedBox(
            height: 38,
            child: ScrollableCard(),
          ),
        ),
        Expanded(
          child: ListView(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomRectangualarCard(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomRectangualarCard(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0, top: 15.0),
                child: Text(
                  'Curated Collections',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}