import 'package:razum_test/domain/entities/article_model.dart';

import '../../core/utils/result.dart';

abstract interface class INewsRepository {
  Future<Result<List<ArticleModel>>> getArticles(String articlesTheme);
}
