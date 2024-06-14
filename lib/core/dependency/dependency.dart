import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:razum_test/api/models/all_articles_dto.dart';
import 'package:razum_test/api/models/article_dto.dart';

import '../../api/services/news_api_service.dart';
import '../../api/support/authorization_interceptor.dart';
import '../../api/support/json_serializable_converter.dart';
import '../../domain/repository/news_repository.dart';
import '../../repository/news_repository.dart';

class Dependency {
  static T resolve<T extends Object>() => GetIt.I.get<T>();

  static void register<T extends Object>(T Function() factoryFunc) => GetIt.I.registerLazySingleton<T>(factoryFunc);

  static T resolveApiService<T extends ChopperService>() => resolve<ChopperClient>().getService<T>();

  static void registerFactory<T extends Object>(T Function() factoryFunc) => GetIt.I.registerFactory(factoryFunc);

  static Future<void> reset() => GetIt.I.reset();
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  registerChopperClient();
  registerRepositories();
}

void registerChopperClient() {
  Dependency.register<ChopperClient>(
    () => ChopperClient(
      baseUrl: Uri.parse('https://newsapi.org/v2'),
      interceptors: [
        AuthorizationInterceptor(),
      ],
      services: [
        NewsApiService.create(),
      ],
      converter: const JsonSerializableConverter(
        {
          ArticleDto: ArticleDto.fromJson,
          AllArticlesDto: AllArticlesDto.fromJson,
        },
      ),
    ),
  );
}

void registerRepositories() {
  Dependency.register<INewsRepository>(NewsRepository.new);
}
