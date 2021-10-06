import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFFF4F4F2),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFF4F4F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                'Rohit',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
                // style: TextStyle(
                //     fontWeight: FontWeight.w500,
                //     color: Colors.black,
                //     fontSize: 24.0),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('ranjanrohit812@gmail.com',
                      style: GoogleFonts.openSans()),
                  Row(
                    children: <Widget>[
                      Text(
                        'View activity',
                        style: GoogleFonts.openSans(
                            color: Colors.pink, fontSize: 13),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.pink,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
              isThreeLine: true,
              trailing: const CircleAvatar(
                backgroundColor: Color(0xFFF5E6AB),
                radius: 30,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  lowerPart(),
                  const Divider(),
                  const ProfileOptions(
                      text: 'Your Rating', icon: FontAwesomeIcons.star),
                  const ProfileOptions(
                      text: 'Zomato Pro', icon: FontAwesomeIcons.trophy),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'FOOD ORDERS',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  const ProfileOptions(
                      text: 'Your Orders', icon: Icons.shopping_bag_outlined),
                  const ProfileOptions(
                      text: 'Favorite Orders', icon: Icons.favorite_border),
                  const ProfileOptions(
                      text: 'Address Book', icon: FontAwesomeIcons.addressBook),
                  const ProfileOptions(
                      text: 'Online Ordering Help',
                      icon: FontAwesomeIcons.commentDots),
                  const Divider(),
                  const ProfileOptions(text: 'About', icon: Icons.info_outline),
                  const Divider(),
                  const ListTileWidget(text: 'Send Feedback'),
                  const ListTileWidget(text: 'Report a Safety Emergency'),
                  const ListTileWidget(text: 'Rate us on the Play Store'),
                  const ListTileWidget(text: 'Logout'),
                  const SizedBox(height: 100)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row lowerPart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: const <Widget>[
            Icon(Icons.bookmark_border),
            SizedBox(
              height: 5,
            ),
            Text('Bookmarks')
          ],
        ),
        Column(
          children: const <Widget>[
            Icon(Icons.notifications_none_outlined),
            SizedBox(
              height: 5,
            ),
            Text('Notifications')
          ],
        ),
        Column(
          children: const <Widget>[
            Icon(Icons.settings_outlined),
            SizedBox(
              height: 5,
            ),
            Text('Settings')
          ],
        ),
        Column(
          children: const <Widget>[
            Icon(Icons.payment_outlined),
            SizedBox(
              height: 5,
            ),
            Text('Payments')
          ],
        ),
      ],
    );
  }
}

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      minLeadingWidth: 40 - 10,
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          icon,
          color: Colors.black,
          size: 15,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15.0),
      ),
    );
  }
}
