import 'package:flutter/material.dart';

import '../models/base_api/book.dart';

class BookListWidget extends StatelessWidget {
  final List<Book> books;

  const BookListWidget(this.books);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 36,
          child: _buildHeader(),
        ),
        Expanded(
          child: _buildList(),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('ID'),
        Text('Name'),
        Text('Price'),
      ],
    );
  }

  Widget _buildList() {
    return ListView.builder(
      // padding: EdgeInsets.all(16.0),
      itemCount: books.length,
      itemBuilder: (context, i) {
        return _buildRow(books[i]);
      });
  }

  Widget _buildRow(Book book) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(book.id.toString()),
        Text(book.name),
        Text(book.price.toString()),
      ],
    );
  }
}
