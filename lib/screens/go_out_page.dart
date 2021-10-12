import 'package:flutter/material.dart';
import 'package:zomato_ui/widgets/carousel.dart';
import 'package:zomato_ui/widgets/custom_rect_cards.dart';
import 'package:zomato_ui/widgets/horizontal_card_list.dart';
import 'package:zomato_ui/widgets/restaurant_item.dart';
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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomRectangualarCard(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomRectangualarCard(),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0, top: 15.0),
                child: Text(
                  'Curated collections',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const CarouselList(),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 5.0, top: 15.0),
                child: Text(
                  'Popular Restaurants Around you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const RestaurantDetail(
                imgUrl: 'assets/images/barb.png',
                desc: 'North India, Mughlai, Deserts',
                time: '4.2 km',
                rating: '4.5',
                price: '1000',
                noOrders: '100',
                name: 'AB\'s - Absolute Barbecues',
                address: true,
                addre: 'Civil Lines, Nagpur',
              ),
              const RestaurantDetail(
                imgUrl: 'assets/images/toss.png',
                desc: 'Pizza, SandWich, Burger',
                time: '4.8 km',
                rating: '4.4',
                price: '550',
                noOrders: '670',
                name: 'Toss - Cafe & Restro',
                address: true,
                addre: 'Bajaj Nagar, Nagpur',
              )
            ],
          ),
        )
      ],
    );
  }
}


