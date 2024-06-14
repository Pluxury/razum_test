// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_articles_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllArticlesDto _$AllArticlesDtoFromJson(Map<String, dynamic> json) =>
    AllArticlesDto(
      status: json['status'] as String,
    )
      ..totalResults = (json['totalResults'] as num?)?.toInt()
      ..articles = (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList()
      ..code = json['code'] as String?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AllArticlesDtoToJson(AllArticlesDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
      'code': instance.code,
      'message': instance.message,
    };
