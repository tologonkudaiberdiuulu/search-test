import 'package:flutter/material.dart';

import 'screens/main/search_books.dart';
import 'shared/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: routes,
      initialRoute: SearchBooksScreen.routeName,
    );
  }
}
