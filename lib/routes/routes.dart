
import 'package:flutter/material.dart';

import '../constants/route_path.dart';
import '../pages/home/home.dart';
import '../pages/search/search.dart';
import '../pages/personal/books.dart';

final routes = <String, WidgetBuilder>{
  '${RoutePath.homePage}': (BuildContext context) {
    return HomePage();
  },
  '${RoutePath.searchPage}': (BuildContext context) {
    return SearchPage();
  },
  '${RoutePath.booksPage}': (BuildContext context) {
    return BooksPage();
  },
};
