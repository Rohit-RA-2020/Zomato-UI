import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato_ui/screens/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFDD2D53),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height / 2,
                      width: size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/uiImage.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width - 95,
                      top: 13,
                      right: 23,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade900.withOpacity(0.7),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: const Text('Skip'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                field(size),
                SizedBox(
                  height: size.height / 40,
                ),
                SizedBox(
                  width: size.width / 1.12,
                  height: size.height / 17,
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        const Text('Send OTP', style: TextStyle(fontSize: 18)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.black,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 8,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: size.width / 3,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.grey.shade300),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: size.width / 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: const Icon(Icons.email, color: Colors.black),
                          onPressed: () {}),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: const Icon(Icons.facebook), onPressed: () {}),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 25,
                ),
                const Text(
                  "By continuing, you agree to our",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "Term of Services Privacy Policy Content Policy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget field(Size size) {
    return Container(
      height: size.height / 16,
      width: size.width / 1.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 20,
          ),
          Container(
            height: size.height / 30,
            width: size.height / 30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/india.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            "\t\t+91",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(
            Icons.arrow_drop_down,
          ),
          const Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Phone Number",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
