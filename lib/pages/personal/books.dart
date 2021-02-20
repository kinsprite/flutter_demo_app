import 'package:flutter/material.dart';
import '../../models/base_api/book.dart';
import '../../widgets/book_list.dart';
import '../../services/api/book_api.dart';

class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  List<Book> books = <Book>[
    Book(id: 1, name: 'C-1', price: 12.3),
    Book(id: 2, name: 'C-2', price: 23.4),
    Book(id: 3, name: 'C-3', price: 34.5),
  ];

  @override
  void initState() {
    super.initState();
    updateBooks();
  }

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

  void updateBooks() async {
    final books = await fetchBooks();

    if (books != null) {
      setState(() {
        this.books = books;
      });
    }
  }
}
