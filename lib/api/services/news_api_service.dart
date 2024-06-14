import 'package:chopper/chopper.dart';
import 'package:razum_test/api/models/all_articles_dto.dart';

part 'news_api_service.chopper.dart';

@ChopperApi(baseUrl: '/everything')
abstract class NewsApiService extends ChopperService {
  static NewsApiService create([ChopperClient? client]) => _$NewsApiService(client);

  @Get()
  Future<Response<AllArticlesDto>> getArticles(@Query('q') String type);
}
