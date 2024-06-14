import 'package:chopper/chopper.dart';
import 'package:razum_test/api/models/article_dto.dart';

part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: 'https://newsapi.org/v2/everything')
abstract class NewsApiService extends ChopperService {
  static NewsApiService create([ChopperClient? client]) => _$NewsApiService(client);

  @Get()
  Future<Response<List<ArticleDto>>> getArticle(@Query('q') String type);
}
