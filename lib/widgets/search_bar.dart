import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final String hintText;
  const SearchBox(this.hintText, {Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              onEditingComplete: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
