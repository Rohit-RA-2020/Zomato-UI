import 'package:flutter/material.dart';

class FoodBar extends StatelessWidget {
  const FoodBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          FoodBarItem(
            imageUrl:
                'https://media.istockphoto.com/photos/medu-wada-with-sambar-and-chutney-south-indian-breakfast-or-snack-on-picture-id1205482272',
            title: 'Vada',
          ),
          FoodBarItem(
            imageUrl:
                'https://media.istockphoto.com/photos/samosa-and-chutney-picture-id967110094',
            title: 'Samosa',
          ),
          FoodBarItem(
            imageUrl:
                'https://cdn.pixabay.com/photo/2016/11/29/04/00/bread-1867208__340.jpg',
            title: 'SandWich',
          ),
          FoodBarItem(
            imageUrl:
                'https://cdn.pixabay.com/photo/2021/09/25/18/54/dish-6655595__480.jpg',
            title: 'Biryani',
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
