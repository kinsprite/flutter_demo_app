import 'package:flutter/material.dart';
import '../components/book_list.dart';

class BooksPage extends StatelessWidget {
  final List<Book> books = <Book>[
    Book(id: 1, name: 'C-1', price: 12.3),
    Book(id: 2, name: 'C-2', price: 23.4),
    Book(id: 3, name: 'C-3', price: 34.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Books'),
      ),
      body: Center(
        child: BookListWidget(books),
      ),
    );
  }
}

void openBooksPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return BooksPage();
    },
  ));
}
