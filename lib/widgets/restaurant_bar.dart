import 'package:flutter/material.dart';

class RestaurantBar extends StatelessWidget {
  const RestaurantBar({
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
              ? const RestaurantBarItem(
                  imageUrl:
                      'https://www.haldirams.com/media/wysiwyg/Contact_Us_Banner.jpg',
                  title: 'Haldiram',
                  time: '32 mins',
                )
              : const RestaurantBarItem(
                  imageUrl:
                      'https://scontent.fnag1-3.fna.fbcdn.net/v/t1.6435-9/97945497_1120509294994364_8440036943424651264_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=973b4a&_nc_ohc=b9v8gmOmO8UAX9h90qy&_nc_ht=scontent.fnag1-3.fna&oh=2d9a9b7fc6a3306487b70dded977571d&oe=61840620',
                  title: 'Behrouz',
                  time: '24 mins',
                ),
          rowNo == 1
              ? const RestaurantBarItem(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/KFC_logo.svg/220px-KFC_logo.png',
                  title: 'KFC',
                  time: '30 mins',
                )
              : const RestaurantBarItem(
                  imageUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Dominos_pizza_logo.svg/512px-Dominos_pizza_logo.png',
                  title: 'Domino\'s',
                  time: '38 mins',
                ),
          rowNo == 1
              ? const RestaurantBarItem(
                  imageUrl:
                      'https://scontent.fnag1-2.fna.fbcdn.net/v/t1.6435-9/89203401_154565692674421_6996872861897981952_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=973b4a&_nc_ohc=E2_GzS48ivAAX-uVr9U&_nc_oc=AQnVtujmHHT7kL7TSwsqZzEmwlGtppSJKZci2Wj9dlyyg5tdH4A-tc9rtYbRrF8Vaj01WwW_Epx5wQH3K6_ivHVp&_nc_ht=scontent.fnag1-2.fna&oh=584eee16fcb3049328fb527a99dc4d3c&oe=61835348',
                  title: 'BombayWala',
                  time: '41 mins',
                )
              : const RestaurantBarItem(
                  imageUrl:
                      'https://1000logos.net/wp-content/uploads/2017/05/Pizza-Hut-Logo-1999-500x281.jpg',
                  title: 'Pizza Hut',
                  time: '37 mins',
                ),
          rowNo == 1
              ? const RestaurantBarItem(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs7PEkty85e0cQbXmp0G_7xBkpH85MVPno0Q&usqp=CAU',
                  title: 'Subway',
                  time: '36 mins',
                )
              : const RestaurantBarItem(
                  imageUrl:
                      'https://logos-download.com/wp-content/uploads/2016/03/McDonalds_Logo_2018-700x700.png',
                  title: 'MacDonald\'s',
                  time: '27 mins',
                ),
        ],
      ),
    );
  }
}

class RestaurantBarItem extends StatelessWidget {
  const RestaurantBarItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.time,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String time;

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
        Text(title),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            time,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        )
      ],
    );
  }
}
