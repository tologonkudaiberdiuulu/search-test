import 'package:flutter/material.dart';

import '../../../models/book.dart';
import '../../../shared/text_styles.dart';
import '../../detail/detail.dart';

class BookItem extends StatelessWidget {
  final BookModel book;

  const BookItem({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: book);
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            book.imageUrl,
          ),
          radius: 40,
        ),
        title: Text(
          book.name,
          style: AppTextStyles.bold16Green,
        ),
        subtitle: Text(
          book.description,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.reg14Black,
        ),
      ),
    );
  }
}
