import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/food_bar.dart';
import 'package:zomato_ui/widgets/horizontal_card_list.dart';
import 'package:zomato_ui/widgets/restaurant_bar.dart';
import 'package:zomato_ui/widgets/search_bar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({
    Key? key,
  }) : super(key: key);

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
                padding: EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/images/offer.png')),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                child: Text(
                  'Top brands for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              RestaurantBar(),
              RestaurantBar(rowNo: 2),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                child: Text(
                  'Eat what makes you happy',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              FoodBar(),
              FoodBar(rowNo: 2),
            ],
          ),
        )
      ],
    );
  }
}
