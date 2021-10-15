import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zomato_ui/widgets/search_bar.dart';

class BottomLocationSheet extends StatelessWidget {
  const BottomLocationSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.0),
            topRight: Radius.circular(14.0),
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Search Location',
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        onEditingComplete: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          hintText: 'Search for your location',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  )),
              ListTile(
                onTap: () {
                  print('Location tile Tapped');
                },
                minLeadingWidth: 10,
                leading: const Icon(
                  Icons.my_location_sharp,
                  color: Colors.red,
                ),
                title: Text(
                  'Use Current Location',
                  style: GoogleFonts.openSans(fontSize: 15, color: Colors.red),
                ),
              ),
              const Divider(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'powered by ',
                    style: TextStyle(color: Colors.grey.shade700),
                    children: const <TextSpan>[
                      TextSpan(text: 'G', style: TextStyle(color: Colors.blue)),
                      TextSpan(text: 'o', style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: 'o', style: TextStyle(color: Colors.orange)),
                      TextSpan(text: 'g', style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text: 'l', style: TextStyle(color: Colors.green)),
                      TextSpan(text: 'e', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 2.2),
            ],
          ),
          color: Colors.white38,
        ),
      ),
    );
  }
}
