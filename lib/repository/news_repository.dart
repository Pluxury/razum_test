import 'package:flutter/material.dart';
import 'package:razum_test/core/utils/result.dart';

import '../api/services/news_api_service.dart';
import '../core/dependency/dependency.dart';
import '../domain/entities/article_model.dart';
import '../domain/repository/news_repository.dart';

class NewsRepository implements INewsRepository {
  late final _newsApiService = Dependency.resolveApiService<NewsApiService>();

  @override
  Future<Result<List<ArticleModel>>> getArticles(String articlesTheme) async {
    try {
      final response = await _newsApiService.getArticles(articlesTheme);

      if (response.isSuccessful) {
        final body = response.body;

        if (body != null) {
          if (body.status == 'ok') {
            final articleModels = body.articles?.map((e) => ArticleModel(
                      author: e.author ?? '',
                      title: e.title ?? '',
                      description: e.description ?? '',
                      url: e.url ?? '',
                      urlToImage: e.urlToImage ?? '',
                      publishedAt: e.publishedAt ?? DateTime.now(),
                      content: e.content ?? '',
                    )) ??
                [];

            return Result.fromSuccess(result: articleModels.toList());
          } else {
            return Result.fromError(error: body.message);
          }
        }
      }

      return Result.fromError(error: response.error.toString());
    } on Exception catch (ex) {
      debugPrint(ex.toString());

      return Result.fromError(error: ex.toString());
    }
  }
}
