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
                imgUrl: 'assets/images/pizza.jpg',
                desc: 'Pizza, Fast Food, Beverages',
                time: '38 mins',
                rating: '4.3',
                price: '150',
                noOrders: '5750',
                address: false,
              ),
              const RestaurantDetail(
                name: 'DacDenil\'s Burger',
                imgUrl: 'assets/images/burger.png',
                desc: 'Fast Food, Berger',
                time: '40 mins',
                rating: '4.0',
                price: '150',
                noOrders: '475',
                address: false,
              ),
              const RestaurantDetail(
                name: 'Yummi Momos',
                imgUrl: 'assets/images/momo.png',
                desc: 'Momos',
                time: '38 mins',
                rating: '4.2',
                price: '200',
                noOrders: '1950',
                address: false,
              )
            ],
          ),
        )
      ],
    );
  }
}
