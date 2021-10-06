import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/horizontal_card_list.dart';
import 'package:zomato_ui/widgets/search_bar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: SearchBox('Restaurant name, cusine, or a dish'),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: SizedBox(
            height: 38,
            child: ScrollableCard(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/images/offer.png')),
        )
      ],
    );
  }
}