import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razum_test/domain/entities/article_model.dart';
import 'package:razum_test/screens/news_detail_screen/bloc/news_detail_bloc.dart';

part 'news_detail_body.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsDetailBloc(),
        child: _NewsDetailBody(
          article: article,
        ),
      ),
    );
  }
}
