import 'package:flutter/material.dart';

class FoodBar extends StatelessWidget {
  const FoodBar({
    Key? key,
    this.rowNo = 1,
  }) : super(key: key);

  final int rowNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          rowNo == 1
              ? const FoodBarItem(
                  imageUrl:
                      'https://media.istockphoto.com/photos/medu-wada-with-sambar-and-chutney-south-indian-breakfast-or-snack-on-picture-id1205482272',
                  title: 'Vada',
                )
              : const FoodBarItem(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2017/06/16/11/38/breakfast-2408818__480.jpg',
                  title: 'Idli',
                ),
          rowNo == 1
              ? const FoodBarItem(
                  imageUrl:
                      'https://media.istockphoto.com/photos/samosa-and-chutney-picture-id967110094',
                  title: 'Samosa',
                )
              : const FoodBarItem(
                  imageUrl:
                      'https://media.istockphoto.com/photos/kerala-style-veg-meals-including-boiled-matta-rice-red-carrot-thoran-picture-id1310629052?b=1&k=6&m=1310629052&s=170667a&w=0&h=05RqhzK6OtUJR3qq0zd1p8saJ8CXBuY0j9WvODav5B0=',
                  title: 'Home Style',
                ),
          rowNo == 1
              ? const FoodBarItem(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2016/11/29/04/00/bread-1867208__340.jpg',
                  title: 'SandWich',
                )
              : const FoodBarItem(
                  imageUrl:
                      'https://media.istockphoto.com/photos/masala-sin-picture-id481750586?b=1&k=20&m=481750586&s=170667a&w=0&h=-gea9W-a3_m2gW2VXYk2OgdpI_BLMhc832TqSEMw7ak=',
                  title: 'Dosa',
                ),
          rowNo == 1
              ? const FoodBarItem(
                  imageUrl:
                      'https://cdn.pixabay.com/photo/2021/09/25/18/54/dish-6655595__480.jpg',
                  title: 'Biryani',
                )
              : const FoodBarItem(
                  imageUrl:
                      'https://media.istockphoto.com/photos/potatoes-fries-french-fries-with-rosemary-in-the-pan-black-background-picture-id1294880859?b=1&k=20&m=1294880859&s=170667a&w=0&h=iiyWMEfzgwg9SNGFwzhnQ-kSk0ZRpHU12ACLUZGMRBE=',
                  title: 'Fries',
                ),
        ],
      ),
    );
  }
}

class FoodBarItem extends StatelessWidget {
  const FoodBarItem({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 5.0,
        ),
        Text(title)
      ],
    );
  }
}
