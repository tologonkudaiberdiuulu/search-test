import 'package:flutter/material.dart';

import '../../models/book.dart';
import '../../shared/dummy_data.dart';
import 'components/search_widget.dart';

import './components/book_item.dart';

class SearchBooksScreen extends StatefulWidget {
  static const String routeName = '/main';
  const SearchBooksScreen({Key? key}) : super(key: key);

  @override
  SearchBooksScreenState createState() => SearchBooksScreenState();
}

class SearchBooksScreenState extends State<SearchBooksScreen> {
  late List<BookModel> _books;
  String query = '';

  @override
  void initState() {
    super.initState();

    _books = books;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Поиск Книги'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            SearchWidget(
              text: query,
              hintText: 'Имя книги или слова из текста',
              onChanged: searchBook,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _books.length,
                itemBuilder: (context, index) {
                  return BookItem(
                    book: _books[index],
                  );
                },
              ),
            ),
          ],
        ),
      );

  void searchBook(String query) {
    final __books = books.where((book) {
      final titleLower = book.name.toLowerCase();
      final descriptionLower = book.description.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          descriptionLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      _books = __books;
    });
  }
}
