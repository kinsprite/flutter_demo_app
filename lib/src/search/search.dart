import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search page'),
      ),
      body: const Center(
        child: Text(
          'This is the Search page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void openSearchPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return SearchPage();
    },
  ));
}
