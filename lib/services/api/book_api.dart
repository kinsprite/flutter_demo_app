import 'package:dio/dio.dart';

import '../../models/base_api/book.dart';
import 'request.dart';

Future<List<Book>> fetchBooks() async {
  try {
    Response<List> response = await dio.get("http://192.168.80.1:18080");
    if (response.data != null) {
      return response.data.map((e) => Book.fromJson(e)).toList();
    }
  } catch (e) {
    print(e);
  }

  return null;
}
