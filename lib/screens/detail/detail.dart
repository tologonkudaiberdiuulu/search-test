import 'package:flutter/material.dart';

import '../../models/book.dart';
import '../../shared/colors.dart';
import '../../shared/text_styles.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = '/detail';
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookModel book =
        ModalRoute.of(context)!.settings.arguments as BookModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Экран книги'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              ListTile(
                leading: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.orange,
                  ),
                  child: Text(
                    book.id.toString(),
                    style: AppTextStyles.bold16Green
                        .copyWith(color: AppColors.black),
                  ),
                ),
                title: Text(
                  book.name,
                  style: AppTextStyles.bold16Green,
                ),
                subtitle: Text(
                  book.author,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.reg14Black,
                ),
                trailing: CircleAvatar(
                  backgroundImage: NetworkImage(
                    book.imageUrl,
                  ),
                  radius: 40,
                ),
              ),
              // const SizedBox(height: 30),
              Text(
                'Описание',
                style: AppTextStyles.bold16Green.copyWith(
                  fontSize: 24,
                  color: AppColors.pureGreen,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                book.description,
                style: AppTextStyles.reg14Black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
