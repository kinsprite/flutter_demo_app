import 'package:flutter/material.dart';
import '../../constants/route_path.dart';

class PersonalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TextButton.icon(
          icon: Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          label: Text("My Books"),
          onPressed: () {
            Navigator.pushNamed(context, RoutePath.booksPage);
          },
        )
      ],
    );
  }
}
