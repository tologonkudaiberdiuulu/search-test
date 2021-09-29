import 'package:flutter/material.dart';

import '../screens/main/search_books.dart';
import '../screens/detail/detail.dart';

final Map<String, WidgetBuilder> routes = {
  SearchBooksScreen.routeName: (context) => const SearchBooksScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
};
