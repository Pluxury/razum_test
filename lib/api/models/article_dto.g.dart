// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      utlToImage: json['utlToImage'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'utlToImage': instance.utlToImage,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'content': instance.content,
    };
