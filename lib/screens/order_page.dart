// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/food_bar.dart';
import 'package:zomato_ui/widgets/horizontal_card_list.dart';
import 'package:zomato_ui/widgets/restaurant_bar.dart';
import 'package:zomato_ui/widgets/restaurant_item.dart';
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
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/images/offer.png')),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                child: Text(
                  'Top brands for you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const RestaurantBar(),
              const RestaurantBar(rowNo: 2),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                child: Text(
                  'Eat what makes you happy',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const FoodBar(),
              const FoodBar(rowNo: 2),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0, top: 10),
                child: Text(
                  '100 Restaurants around you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const RestaurantDetail(
                name: 'Domino\'s Pizza',
                imgUrl:
                    'https://blogs.forbes.com/kylewong/files/2018/01/Large-2-Topping_Boxes_1_5x7-2.jpg',
                desc: 'Pizza, Fast Food, Beverages',
                time: '38',
                rating: '4.3',
                price: '150',
                noOrders: '5750',
              ),
              const RestaurantDetail(
                name: 'DacDenil\'s Burger',
                imgUrl:
                    'https://b.zmtcdn.com/data/pictures/chains/3/19276543/cfc6417f16ca11f81f071db7474805d2.jpeg',
                desc: 'Fast Food, Berger',
                time: '40',
                rating: '4.0',
                price: '150',
                noOrders: '475',
              )
            ],
          ),
        )
      ],
    );
  }
}
